# Spawn randomized lightning around the blackhole center without straight hits
# Center: 56.528 133 118.476

# Strike at ring markers (avoids invalid ^ coords)
execute as @e[type=marker,tag=dem_ring,limit=4,sort=random] at @s run summon lightning_bolt ~ ~ ~

# Add screen shake vibe with rumble sound placeholder
playsound terf:explosion.thunder ambient @a[distance=..64] 56.528 133 118.476 0.6 1.1

