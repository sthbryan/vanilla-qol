# A sound when somebody joins and when somebody leaves.
#
# Minecraft exposes no connect/disconnect event to datapacks, so the player
# count is compared against the previous cycle. That detects that somebody
# came or went, not who.

execute store result score #pcount qol.sys if entity @a
execute if score #pcount qol.sys > #online qol.sys run function vanilla_qol:sound/join
execute if score #pcount qol.sys < #online qol.sys run function vanilla_qol:sound/leave
scoreboard players operation #online qol.sys = #pcount qol.sys
