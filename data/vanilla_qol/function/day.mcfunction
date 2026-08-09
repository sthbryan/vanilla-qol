# Detects the change of day and announces it.
#
# In 26.2 nothing returns a day number: 'time query day' gives the position
# inside the day timeline (0..23999) and 'daytime' no longer exists.
# 'gametime' is no good either — it counts real world ticks and does NOT jump
# when players sleep.
#
# So the wrap of the timeline is what gets detected. That covers both a
# natural dawn and the jump from sleeping.
execute store result score #tnow qol.sys run time query day
execute if score #tnow qol.sys < #tprev qol.sys run function vanilla_qol:day_next
scoreboard players operation #tprev qol.sys = #tnow qol.sys
