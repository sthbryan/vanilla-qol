# Anuncia el numero de dia cuando cambia (al amanecer).
#
# Ojo: en 26.2 'time query day' NO devuelve el numero de dia sino la posicion
# dentro de la timeline del dia, en ticks. El numero sale de gametime / 24000.
execute store result score #today qol.sys run time query gametime
scoreboard players operation #today qol.sys /= #daylen qol.sys
execute if entity @a unless score #today qol.sys = #day qol.sys run function crafting_qol:day_announce
scoreboard players operation #day qol.sys = #today qol.sys
