# Latido cuando quedan 3 corazones o menos. El criterio 'health' viene en
# medios corazones: 6 = 3 corazones.
execute as @a[scores={qol.hp=1..6},gamemode=!creative,gamemode=!spectator] at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1.1
