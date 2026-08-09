# Nivel de experiencia junto al nombre en el tab list.
#
# El objetivo es 'dummy' a proposito. Con criterio 'level' Minecraft lo marca
# de solo lectura y 'store result' falla con "Cannot modify read-only score";
# ademas solo escribiria cuando el jugador sube o baja de nivel, asi que quien
# no se mueva de nivel no mostraria nada. Por eso se lee activamente.
execute as @a store result score @s qol.level run experience query @s levels
