"""Source-only checks and an optional isolated RGBDS round-trip check."""
from __future__ import annotations

import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import tempfile
import unittest


ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / "disassembly"
EXPECTED_SIZE = 131072
EXPECTED_SHA256 = "ad6f9fe97a40418279d3b834a64d9c6c52c0da209f430718f2bd02611892326f"


class DisassemblyBaselineTests(unittest.TestCase):
    def test_build_sources_are_self_contained_text(self):
        game = (SOURCE / "game.asm").read_text()
        includes = re.findall(r'^INCLUDE "([^"]+)"', game, re.MULTILINE)
        self.assertEqual(set(includes), {"hardware.inc", *(f"bank_{i:03x}.asm" for i in range(8))})
        for name in includes:
            path = SOURCE / name
            self.assertTrue(path.is_file(), name)
            self.assertNotIn("INCBIN", path.read_text().upper(), name)
            self.assertNotIn(b"\0", path.read_bytes(), name)

    def test_generation_profile_has_no_image_extraction(self):
        profile = (SOURCE / "gargoyles_quest.sym").read_text()
        self.assertNotIn(".image:", profile)
        self.assertIn("06:4000 .data:1600:10", profile)
        self.assertIn("01:44DF UpdatePlatformingPlayer", profile)

    def test_pinned_hardware_and_profile_hashes(self):
        provenance = json.loads((SOURCE / "provenance.json").read_text())
        self.assertEqual(provenance["rom"]["sha256"], EXPECTED_SHA256)
        for name, expected in [
            ("hardware.inc", provenance["hardware_include"]["sha256"]),
            ("gargoyles_quest.sym", provenance["generation"]["profile_sha256"]),
        ]:
            self.assertEqual(hashlib.sha256((SOURCE / name).read_bytes()).hexdigest(), expected)

    def test_build_outputs_are_not_eligible_for_git(self):
        paths = ["disassembly/game.gb", "disassembly/game.o", "disassembly/game.map",
                 "disassembly/game.sym", "disassembly/gfx/unreviewed.png"]
        run = subprocess.run(["git", "check-ignore", "--no-index", "--stdin"],
                             cwd=ROOT, input="\n".join(paths) + "\n", text=True,
                             capture_output=True, check=False)
        self.assertEqual(run.returncode, 0, run.stderr)
        self.assertEqual(set(run.stdout.splitlines()), set(paths))

    def test_link_and_fix_match_expected_rom(self):
        env = os.environ.copy()
        if env.get("GQ_RGBDS_DIR"):
            env["PATH"] = env["GQ_RGBDS_DIR"] + os.pathsep + env.get("PATH", "")
        tools = {name: shutil.which(name, path=env.get("PATH"))
                 for name in ("rgbasm", "rgblink", "rgbfix")}
        if not all(tools.values()):
            self.skipTest("RGBDS not on PATH; set GQ_RGBDS_DIR for the isolated build check")
        with tempfile.TemporaryDirectory(prefix="gq-disassembly-check-") as directory:
            work = Path(directory)
            for name in ["game.asm", "hardware.inc", *(f"bank_{i:03x}.asm" for i in range(8))]:
                shutil.copyfile(SOURCE / name, work / name)
            commands = [
                [tools["rgbasm"], "-o", "game.o", "game.asm"],
                [tools["rgblink"], "-o", "game.gb", "game.o"],
                [tools["rgbfix"], "-v", "-p", "255", "game.gb"],
            ]
            for index, command in enumerate(commands):
                run = subprocess.run(command, cwd=work, env=env, text=True,
                                     capture_output=True, timeout=30, check=False)
                self.assertEqual(run.returncode, 0, run.stdout + run.stderr)
                if index >= 1:
                    data = (work / "game.gb").read_bytes()
                    self.assertEqual(len(data), EXPECTED_SIZE)
                    self.assertEqual(hashlib.sha256(data).hexdigest(), EXPECTED_SHA256)


if __name__ == "__main__":
    unittest.main(verbosity=2)
