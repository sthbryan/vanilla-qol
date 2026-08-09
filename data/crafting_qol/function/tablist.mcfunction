# Experience level next to each name in the tab list, with an icon.
#
# The objective is 'dummy' on purpose. With the 'level' criterion Minecraft
# marks it read-only and 'store result' fails with "Cannot modify read-only
# score"; it also only writes when a player gains or loses a level, so anyone
# holding steady would show nothing. Hence the active read.
execute as @a store result score @s qol.level run experience query @s levels

# The list slot renders a bare number, so the icon has to come from a fixed
# number format that carries the score along with it.
execute as @a run scoreboard players display numberformat @s qol.level fixed [{"score":{"name":"@s","objective":"qol.level"}},{"text":" ✦","color":"green"}]
