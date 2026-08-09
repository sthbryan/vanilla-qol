# Vanilla QoL

A Minecraft datapack with quality-of-life recipes, sounds and notices.

## Recipes

| Station | Input | Output |
| --- | --- | --- |
| Stonecutter | Any log (`#minecraft:logs`) | 8 sticks |

Rates match vanilla. One log yields 4 planks, which craft into 8 sticks, so the
recipes remove intermediate steps without changing the economy.

Recipes use item tags, so modded woods are covered as long as the mod registers
them in the vanilla tag.

## Features

| Feature | What it does | When it runs |
| --- | --- | --- |
| Join / leave sound | A chime when someone connects, a low note when someone disconnects | 4×/s |
| Death sound | A bell heard server-wide when any player dies | 4×/s |
| Low health | A heartbeat while a player is at 3 hearts or less | 1×/s |
| Path sprinting | Speed I while sprinting on a dirt path | 4×/s |
| Day counter | Announces the day number as a title when it changes | 1×/s |
| Tab list | Health, experience level and hours played beside each name | 1×/s |

Minecraft exposes no connect/disconnect event to datapacks, so join and leave
are inferred by comparing the player count against the previous cycle. That
detects *that* somebody came or went, not *who*.

### Seeding two counters

Two values cannot be recovered from the world, so they start wrong on an
existing save and have to be set once.

**Day number.** Nothing in 26.2 returns one: `time query day` gives a position
inside the day timeline, `daytime` is gone, and `level.dat` no longer stores
`DayTime`. The pack seeds from `gametime / 24000`, which *undercounts* — a
world that has been slept through skips nights without advancing gametime. Set
the real number once:

```
scoreboard players set #day qol.sys 126
```

**Hours played.** A statistic criterion does not backfill the existing
statistic when the objective is created, so it starts at zero and counts from
then on. The objective is writable, so seed it from
`world/players/stats/<uuid>.json` → `stats."minecraft:custom"."minecraft:play_time"`:

```
scoreboard players set <player> qol.ptime 860781
```

### Tuning

- Sounds live in `data/vanilla_qol/function/sound/`. Change the sound id,
  volume or pitch there; nothing else refers to them.
- Which blocks count as roads is the `#vanilla_qol:roads` block tag.
- The low-health threshold is the `qol.health=1..6` range (health points).
- What the tab list shows is the fixed number format at the end of
  `function/tablist.mcfunction`.

## Performance

Everything runs from one function that reschedules itself every 5 ticks, not
from the `#minecraft:tick` function tag. Every selector is `@a`, never `@e`.

That is a deliberate reaction to what replaced this pack's predecessor: a mod
whose datapack layer ran `execute ... @e[...]` selectors every tick and cost
**51% of the server thread** on an ARM SBC — 32.8% in tick functions plus 18.1%
in a single advancement whose `nbt` predicate re-serialized the whole player
every tick. `@e` scans every loaded entity; `@a` scans at most the players.

Cheap building blocks used here instead:

- Scoreboard criteria Minecraft already maintains (`deathCount`, `health`), so
  detection costs a comparison rather than a scan.
- One `if entity @a` per cycle for presence, instead of per-player bookkeeping.
- A predicate for path sprinting, evaluated only against `@a`.

## Compatibility

Built for Minecraft 26.2 (`pack_format` 107, accepts up to 108).

Note that `time query day` in 26.2 returns a position inside the day timeline
in ticks, not a day number — the day counter derives it from
`gametime / 24000`.

## Installation

Copy the repository contents into a folder inside `world/datapacks/`, or place a
zip of them there. Then run `/reload` or restart the server.

Tagging a release (`v*`) publishes `vanilla-qol.zip`, which can be consumed
directly:

```
https://github.com/sthbryan/vanilla-qol/releases/latest/download/vanilla-qol.zip
```
