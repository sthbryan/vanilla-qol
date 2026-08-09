# Milestone check, run right after the day counter advances.
#
# 100 wins over 50: on day 100, 200 and so on only the bigger one fires,
# never both.
scoreboard players operation #m100 qol.sys = #day qol.sys
scoreboard players operation #m100 qol.sys %= #c100 qol.sys
scoreboard players operation #m50 qol.sys = #day qol.sys
scoreboard players operation #m50 qol.sys %= #c50 qol.sys

execute if score #m100 qol.sys matches 0 run function vanilla_qol:milestone/hundred
execute if score #m50 qol.sys matches 0 unless score #m100 qol.sys matches 0 run function vanilla_qol:milestone/fifty
