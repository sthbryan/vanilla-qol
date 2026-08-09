# Every 100 days: the bigger one, in gold.
title @a subtitle [{"text":"★ 100 day milestone ★","color":"gold","bold":true}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.6 1.4
execute as @a at @s run summon firework_rocket ~1 ~1 ~ {LifeTime:16,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"large_ball",colors:[I;16766720],fade_colors:[I;16777215],has_trail:true,has_twinkle:true}]}}}}
schedule function vanilla_qol:milestone/hundred2 14t
