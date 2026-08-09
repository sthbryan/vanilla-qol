# Heartbeat at three hearts or less. The 'health' criterion counts half
# hearts, so 6 means 3 hearts.
execute as @a[scores={qol.hp=1..6},gamemode=!creative,gamemode=!spectator] at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1.1
