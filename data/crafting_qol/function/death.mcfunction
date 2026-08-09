# deathCount lo incrementa Minecraft solo. Se lee y se vuelve a cero.
execute as @a[scores={qol.deaths=1..}] run function crafting_qol:sound/death
scoreboard players set @a[scores={qol.deaths=1..}] qol.deaths 0
