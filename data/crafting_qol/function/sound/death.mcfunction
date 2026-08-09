# Heard server-wide, not only near whoever died: it is played at each
# listener's own position rather than at the corpse.
#
# Two low bell strikes. The earlier 'block.bell.resonate' was the faint hum
# that trails a bell, not the strike, and went unheard.
execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0.6
schedule function crafting_qol:sound/death2 6t
