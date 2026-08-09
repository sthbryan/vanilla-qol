# Every 50 days: a modest salute in cyan and white.
#
# Particles, not firework rockets. A real rocket explodes and hurts whoever is
# nearby — in a cave it took half a player's health. The launch and burst
# sounds are kept, so it still reads as fireworks.
#
# The subtitle is set here and drawn by day_announce, which runs next: a
# subtitle only shows when a title is issued after it.
title @a subtitle [{"text":"✦ 50 day milestone ✦","color":"aqua"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 0.7 1.2
schedule function vanilla_qol:milestone/fifty2 8t
