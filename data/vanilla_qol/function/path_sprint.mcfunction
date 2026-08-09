# A boost while sprinting on a path. It lasts one second and the loop renews
# it four times per second, so it lapses on its own once the player steps off.
# The amplifier is 0, which is Speed I: +20% on top of the +30% sprinting
# already gives. Speed II felt like too much.
# The trailing 'true' hides the particles.
execute as @a[predicate=vanilla_qol:sprinting_on_path] run effect give @s speed 1 0 true
