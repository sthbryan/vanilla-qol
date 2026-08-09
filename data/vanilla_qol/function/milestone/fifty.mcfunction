# Every 50 days: a modest salute in cyan and white.
#
# The subtitle is set here and drawn by day_announce, which runs next — a
# subtitle only shows when a title is issued after it.
title @a subtitle [{"text":"✦ 50 day milestone ✦","color":"aqua"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute as @a at @s run summon firework_rocket ~0.5 ~1 ~ {LifeTime:14,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"large_ball",colors:[I;65535],has_trail:true,has_twinkle:true}]}}}}
schedule function vanilla_qol:milestone/fifty2 12t
