# Every 5 ticks (4 times per second).
#
# Deliberately avoids the #minecraft:tick function tag and @e selectors: that
# combination is what made a datapack eat half the server tick. Everything
# here is scoped to @a, which is at most a handful of players.

schedule function crafting_qol:loop 5t replace

function crafting_qol:presence
function crafting_qol:death
function crafting_qol:path_sprint

scoreboard players add #tick qol.sys 1
execute if score #tick qol.sys matches 4.. run function crafting_qol:slow
