# Sonido cuando alguien entra y cuando alguien sale.
#
# Minecraft no expone eventos de conexion a los datapacks, asi que se compara
# la cantidad de jugadores contra la del ciclo anterior. Detecta que alguien
# entro o salio, no quien.

execute store result score #pcount qol.sys if entity @a
execute if score #pcount qol.sys > #online qol.sys run function crafting_qol:sound/join
execute if score #pcount qol.sys < #online qol.sys run function crafting_qol:sound/leave
scoreboard players operation #online qol.sys = #pcount qol.sys
