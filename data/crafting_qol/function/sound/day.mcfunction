# A rising three-note chime for the new day.
#
# Minecraft has no way to play a melody in one command, so the notes are
# scheduled apart. Pitch 1.0 / 1.26 / 1.5 is a major triad; the note block
# chime is the cleanest bell in the vanilla set.
#
# For something plainer, replace the whole thing with a single line:
#   execute as @a at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 1 1
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.0
schedule function crafting_qol:sound/day2 4t
schedule function crafting_qol:sound/day3 8t
