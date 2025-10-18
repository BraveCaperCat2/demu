# Emit continuous effects from blackhole marker
execute as @e[type=marker,tag=dem_blackhole,limit=1] at @s run particle portal ~ ~ ~ 0.7 0.7 0.7 0.05 200 force

# Startup thunder and ring lightning disabled per feedback
# execute as @e[type=marker,tag=dem_blackhole,limit=1] at @s run playsound terf:explosion.thunder ambient @a[distance=..64]
# function dem:effects/ring_lightning

# Reschedule
schedule function dem:blackhole/tick 10t replace

