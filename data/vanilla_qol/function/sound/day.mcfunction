# A five-note rising figure for the new day.
#
# Minecraft cannot play a melody in one command, so each note is scheduled
# separately. The pitches are a major pentatonic climb — root, 2nd, 3rd, 5th,
# octave — which is 1.0 / 1.122 / 1.26 / 1.498 / 2.0 in playsound terms.
# The last note lands a beat late so the phrase resolves instead of just
# stopping.
#
# For something plainer, replace the whole thing with a single line:
#   execute as @a at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 1 1
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.0
schedule function vanilla_qol:sound/day2 3t
schedule function vanilla_qol:sound/day3 6t
schedule function vanilla_qol:sound/day4 9t
schedule function vanilla_qol:sound/day5 14t
