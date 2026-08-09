# Se ejecuta al arrancar el server y en cada /reload.

# qol.sys guarda contadores internos bajo nombres de jugador falsos (#algo).
scoreboard objectives add qol.sys dummy
# Criterio que Minecraft mantiene solo: no cuesta nada por tick.
scoreboard objectives add qol.deaths deathCount
scoreboard objectives add qol.hp health

# 'add 0' inicializa sin pisar el valor si ya existe.
scoreboard players add #tick qol.sys 0
scoreboard players add #online qol.sys 0

# El loop se reagenda a si mismo. 'replace' evita que /reload lo duplique.
schedule function crafting_qol:loop 5t replace
