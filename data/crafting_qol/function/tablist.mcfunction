# Health, experience level and hours played, next to each name in the tab list.
#
# The list slot renders one bare number, so everything has to ride inside a
# per-player fixed number format that carries the scores with it.
#
# The displayed objective is qol.tab, which is never read by the format. If
# the format referenced the very objective it is formatting, rendering it
# would re-apply the format and recurse until the nesting limit — the tab
# ends up repeating the same fragment dozens of times.
#
# Health and level are read actively rather than through the 'health' and
# 'level' criteria: those only write when the value changes, so a player who
# is at full health and holding a level would show nothing. Criterion
# objectives are also read-only, which rules out computing on top of them.

execute as @a store result score @s qol.health run data get entity @s Health
execute as @a store result score @s qol.level run experience query @s levels

# Playtime is a statistic criterion, which Minecraft maintains for free, but
# it counts ticks — turn it into whole hours on a writable objective.
# Adding half an hour first makes the integer division round instead of floor.
execute as @a run scoreboard players operation @s qol.hours = @s qol.ptime
execute as @a run scoreboard players operation @s qol.hours += #halfhour qol.sys
execute as @a run scoreboard players operation @s qol.hours /= #hourlen qol.sys

execute as @a run scoreboard players display numberformat @s qol.tab fixed [{"score":{"name":"@s","objective":"qol.health"},"color":"red"},{"text":"❤ ","color":"red"},{"score":{"name":"@s","objective":"qol.level"},"color":"green"},{"text":"✦ ","color":"green"},{"score":{"name":"@s","objective":"qol.hours"},"color":"gray"},{"text":"h","color":"gray"}]
