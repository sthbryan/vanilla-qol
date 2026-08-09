execute as @a at @s run playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 1 0.9
execute as @a at @s run particle minecraft:flash{color:[1.0,0.25,0.1,1.0]} ~ ~1.5 ~ 0 0 0 0 1 force @s
execute as @a at @s run particle minecraft:dust_color_transition{from_color:[1.0,0.25,0.1],to_color:[1.0,0.84,0.0],scale:1.6} ~ ~1.5 ~ 0.9 0.9 0.9 0 90 normal @s
execute as @a at @s run particle minecraft:end_rod ~ ~1.5 ~ 0.8 0.8 0.8 0.04 70 normal @s
