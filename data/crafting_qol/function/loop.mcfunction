# Cada 5 ticks (4 veces por segundo).
#
# Deliberadamente NO usa el tag #minecraft:tick ni selectores @e: esa
# combinacion es la que hacia que un datapack se comiera la mitad del tick.
# Todo aca se acota a @a, que son 3 jugadores como maximo.

schedule function crafting_qol:loop 5t replace

scoreboard players add #tick qol.sys 1
execute if score #tick qol.sys matches 4.. run function crafting_qol:slow
