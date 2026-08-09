# Runs on server start and on every /reload.

# qol.sys holds internal counters under fake player names (#something).
scoreboard objectives add qol.sys dummy
# Criteria Minecraft maintains on its own: free, no per-tick cost.
scoreboard objectives add qol.deaths deathCount
scoreboard objectives add qol.ptime minecraft.custom:minecraft.play_time

# 'add 0' initialises without overwriting an existing value.
scoreboard players add #tick qol.sys 0
scoreboard players add #online qol.sys 0

# Constant used to turn gametime into a day number.
scoreboard players set #daylen qol.sys 24000
scoreboard players set #hourlen qol.sys 72000
scoreboard players set #halfhour qol.sys 36000

# The day counter is only seeded the first time it is missing.
execute unless score #day qol.sys matches ..2147483647 run function crafting_qol:seed_day

# The loop reschedules itself. 'replace' keeps /reload from duplicating it.
schedule function crafting_qol:loop 5t replace

# What the tab list shows. All dummy: they are computed, and a criterion
# objective would be read-only.
scoreboard objectives add qol.health dummy
scoreboard objectives add qol.level dummy
scoreboard objectives add qol.hours dummy

# qol.tab only exists to carry the display. Keeping it separate from the
# objectives the format reads is what prevents the format from recursing.
scoreboard objectives add qol.tab dummy
scoreboard objectives setdisplay list qol.tab
