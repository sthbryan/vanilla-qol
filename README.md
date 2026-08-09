# Crafting QoL

A Minecraft datapack with quality-of-life crafting recipes.

## Recipes

| Station | Input | Output |
| --- | --- | --- |
| Stonecutter | Any log (`#minecraft:logs`) | 8 sticks |

Rates match vanilla. One log yields 4 planks, which craft into 8 sticks, so the
recipes remove intermediate steps without changing the economy.

Recipes use item tags, so modded woods are covered as long as the mod registers
them in the vanilla tag.

## Compatibility

Built for Minecraft 26.2 (`pack_format` 107, accepts up to 108).

## Installation

Copy the repository contents into a folder inside `world/datapacks/`, or place a
zip of them there. Then run `/reload` or restart the server.
