"""Shared raw Game Boy 2bpp color-index decoding."""
from __future__ import annotations


def decode_2bpp_indices(tile: bytes) -> list[list[int]]:
    return [[
        (((tile[y * 2 + 1] >> (7 - x)) & 1) << 1)
        | ((tile[y * 2] >> (7 - x)) & 1)
        for x in range(8)
    ] for y in range(8)]
