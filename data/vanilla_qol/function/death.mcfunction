# Minecraft increments deathCount by itself. Read it, then clear it.
execute as @a[scores={qol.deaths=1..}] run function vanilla_qol:sound/death
scoreboard players set @a[scores={qol.deaths=1..}] qol.deaths 0
