scoreboard players add #day qol.sys 1

# The subtitle is cleared first so a past milestone does not linger, then the
# milestone check may set one, then day_announce draws title and subtitle.
execute if entity @a run title @a subtitle {"text":""}
execute if entity @a run function vanilla_qol:milestone
execute if entity @a run function vanilla_qol:day_announce
