# Experience level next to each name in the tab list.
#
# The objective is 'dummy' on purpose. With the 'level' criterion Minecraft
# marks it read-only and 'store result' fails with "Cannot modify read-only
# score"; it also only writes when a player gains or loses a level, so anyone
# holding steady would show nothing. Hence the active read.
execute as @a store result score @s qol.level run experience query @s levels
