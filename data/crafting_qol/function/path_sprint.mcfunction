# Impulso al esprintar sobre un camino. Dura 1 segundo y el loop lo renueva
# cada 0.25 s, asi que se corta solo al salir del camino.
# El 'true' final oculta las particulas.
execute as @a[predicate=crafting_qol:sprinting_on_path] run effect give @s speed 1 1 true
