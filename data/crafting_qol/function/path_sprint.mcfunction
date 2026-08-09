# A boost while sprinting on a path. It lasts one second and the loop renews
# it four times per second, so it lapses on its own once the player steps off.
# The trailing 'true' hides the particles.
execute as @a[predicate=crafting_qol:sprinting_on_path] run effect give @s speed 1 1 true
