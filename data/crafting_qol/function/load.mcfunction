# Runs on server start and on every /reload.

# qol.sys holds internal counters under fake player names (#something).
scoreboard objectives add qol.sys dummy
# Criteria Minecraft maintains on its own: free, no per-tick cost.
scoreboard objectives add qol.deaths deathCount
scoreboard objectives add qol.hp health

# 'add 0' initialises without overwriting an existing value.
scoreboard players add #tick qol.sys 0
scoreboard players add #online qol.sys 0

# Constant used to turn gametime into a day number.
scoreboard players set #daylen qol.sys 24000

# The day counter is only seeded the first time it is missing.
execute unless score #day qol.sys matches ..2147483647 run function crafting_qol:seed_day

# The loop reschedules itself. 'replace' keeps /reload from duplicating it.
schedule function crafting_qol:loop 5t replace

# Experience level next to each name in the tab list.
scoreboard objectives add qol.level dummy
scoreboard objectives setdisplay list qol.level
scoreboard objectives modify qol.level numberformat styled {"color":"green"}
