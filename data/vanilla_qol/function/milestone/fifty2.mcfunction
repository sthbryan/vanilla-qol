# The burst. Kept at ~1.5 so it is still visible in a low ceiling.
execute as @a at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1.2
execute as @a at @s run particle minecraft:flash{color:[0.0,1.0,1.0,1.0]} ~ ~1.5 ~ 0 0 0 0 1 force @s
execute as @a at @s run particle minecraft:firework ~ ~1.5 ~ 0.4 0.4 0.4 0.12 90 normal @s
execute as @a at @s run particle minecraft:dust_color_transition{from_color:[0.0,1.0,1.0],to_color:[1.0,1.0,1.0],scale:1.4} ~ ~1.5 ~ 0.7 0.7 0.7 0 70 normal @s
schedule function vanilla_qol:milestone/fifty3 10t
