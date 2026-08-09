execute as @a at @s run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 1 1
execute as @a at @s run particle minecraft:flash{color:[1.0,0.84,0.0,1.0]} ~ ~1.5 ~ 0 0 0 0 1 force @s
execute as @a at @s run particle minecraft:firework ~ ~1.5 ~ 0.6 0.6 0.6 0.16 140 normal @s
execute as @a at @s run particle minecraft:dust_color_transition{from_color:[1.0,0.84,0.0],to_color:[1.0,1.0,1.0],scale:1.6} ~ ~1.5 ~ 0.9 0.9 0.9 0 100 normal @s
schedule function vanilla_qol:milestone/hundred3 12t
