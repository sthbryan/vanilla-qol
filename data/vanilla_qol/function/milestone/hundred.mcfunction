# Every 100 days: the bigger one, in gold. Also particles only.
title @a subtitle [{"text":"★ 100 day milestone ★","color":"gold","bold":true}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.6 1.4
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 0.8 0.9
schedule function vanilla_qol:milestone/hundred2 8t
