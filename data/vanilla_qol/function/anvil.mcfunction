# Anvils never wear out. Datapacks get no event when an anvil degrades, so
# opening one (a statistic Minecraft counts for free) arms a one-minute window
# in which any chipped or damaged anvil near the player is put back to a full
# anvil 4 times per second. An anvil only loses one stage per use, so it is
# always repaired before it can reach the stage that breaks.
execute as @a[scores={qol.anvil=1..}] run scoreboard players set @s qol.anvilt 240
scoreboard players reset @a[scores={qol.anvil=1..}] qol.anvil

execute as @a[scores={qol.anvilt=1..}] at @s run function vanilla_qol:anvil_repair
scoreboard players remove @a[scores={qol.anvilt=1..}] qol.anvilt 1
