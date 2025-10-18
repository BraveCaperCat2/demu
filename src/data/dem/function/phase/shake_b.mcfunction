# Subtle camera shake (part B): small negative jitter, then schedule A
execute if score #dem dem.phase matches 1 as @a at @s run tp @s ~ ~ ~ ~-0.35 ~-0.18
execute if score #dem dem.phase matches 1 run schedule function dem:phase/shake_a 1t replace

