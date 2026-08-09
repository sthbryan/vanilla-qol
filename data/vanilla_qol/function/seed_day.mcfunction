# First run only. gametime/24000 undercounts the day if the world has been
# slept through a lot, but it is a reasonable starting point. To correct it:
#   scoreboard players set #day qol.sys <number>
execute store result score #day qol.sys run time query gametime
scoreboard players operation #day qol.sys /= #daylen qol.sys
