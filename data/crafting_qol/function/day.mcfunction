# Detecta el cambio de dia y lo anuncia.
#
# En 26.2 no hay forma de preguntar el numero de dia: 'time query day' devuelve
# la posicion dentro de la timeline del dia (0..23999) y 'daytime' ya no existe.
# 'gametime' tampoco sirve porque cuenta ticks reales y NO salta al dormir.
#
# Asi que se detecta cuando la timeline da la vuelta. Eso cubre tanto el
# amanecer natural como el salto por dormir.
execute store result score #tnow qol.sys run time query day
execute if score #tnow qol.sys < #tprev qol.sys run function crafting_qol:day_next
scoreboard players operation #tprev qol.sys = #tnow qol.sys
