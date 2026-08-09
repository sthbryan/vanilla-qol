# Heartbeat at three hearts or less. qol.health is raw health points, so 6
# means 3 hearts. It is refreshed once per second by crafting_qol:tablist.
execute as @a[scores={qol.health=1..6},gamemode=!creative,gamemode=!spectator] at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1.1
