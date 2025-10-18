# Step tick for DEM startup (fast)
scoreboard players add #dem dem.timer 1

# Faster broadcasts (~1s, ~2s, ~3s)
execute if score #dem dem.timer matches 20 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"["},{"text":"SYSTEM","color":"light_purple"},{"text":"] "},{"text":"Charging dark energy capacitors...","color":"dark_purple"}]
execute if score #dem dem.timer matches 40 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"["},{"text":"SYSTEM","color":"light_purple"},{"text":"] "},{"text":"Aligning singularity injectors...","color":"dark_purple"}]
execute if score #dem dem.timer matches 60 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"["},{"text":"SYSTEM","color":"light_purple"},{"text":"] "},{"text":"Phase stabilizers nominal.","color":"dark_purple"}]

# (Disabled) Radial lightning arcs during startup per feedback
# function dem:effects/ring_lightning

# Random display beam during startup
execute if score #dem dem.timer matches 15..75 run function dem:beams/fire_display_random

# Form quickly at ~4s
execute if score #dem dem.timer matches 80 run function dem:blackhole/summon
execute if score #dem dem.timer matches 80 run function dem:startup/finish

# Continue scheduling until finish, fast tick
execute unless score #dem dem.state matches 0 run schedule function dem:startup/step 5t replace

