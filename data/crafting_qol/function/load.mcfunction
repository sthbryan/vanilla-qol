# Se ejecuta al arrancar el server y en cada /reload.

# qol.sys guarda contadores internos bajo nombres de jugador falsos (#algo).
scoreboard objectives add qol.sys dummy
# Criterio que Minecraft mantiene solo: no cuesta nada por tick.
scoreboard objectives add qol.deaths deathCount
scoreboard objectives add qol.hp health

# 'add 0' inicializa sin pisar el valor si ya existe.
scoreboard players add #tick qol.sys 0
scoreboard players add #online qol.sys 0

# Constante para dividir gametime y sacar el numero de dia.
scoreboard players set #daylen qol.sys 24000

# El contador de dias solo se siembra si nunca existio.
execute unless score #day qol.sys matches ..2147483647 run function crafting_qol:seed_day

# El loop se reagenda a si mismo. 'replace' evita que /reload lo duplique.
schedule function crafting_qol:loop 5t replace
