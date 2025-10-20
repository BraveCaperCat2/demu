# Step tick for DEM startup
scoreboard players add #dem dem.timer 1

# Broadcast messages at certain times
# 7s - "Calibrating power lasers..."
execute if score #dem dem.timer matches 140 run function dem:broadcast {"text":"{\"text\":\"Callibrating power lasers...\"}", "level":0}
# 28s - "Calibration complete."
execute if score #dem dem.timer matches 560 run function dem:broadcast {"text":"{\"text\":\"Calibration complete.\"}", "level":0}
# 29s - "Forming primary gravitational and atmospheric shields..."
execute if score #dem dem.timer matches 580 run function dem:broadcast {"text":"{\"text\":\"Forming primary gravitational and atmospheric shields...\"}", "level":0}
# 51s - "Primary shields formed."
execute if score #dem dem.timer matches 1020 run function dem:broadcast {"text":"{\"text\":\"Primary shields formed.\"}", "level":0}
# 52s - "Forming EMR shield..."
execute if score #dem dem.timer matches 1040 run function dem:broadcast {"text":"{\"text\":\"Forming EMR shield...\"}", "level":0}
# 52s - "Lowering startup manifolds..."
execute if score #dem dem.timer matches 1140 run function dem:broadcast {"text":"{\"text\":\"Lowering startup manifolds...\"}", "level":0}
# 73s - "EMR shield formed."
execute if score #dem dem.timer matches 1460 run function dem:broadcast {"text":"{\"text\":\"EMR shield formed.\"}", "level":0}
# 74s - "Startup manifolds in position. Forming accretion disc..."
execute if score #dem dem.timer matches 1480 run function dem:broadcast {"text":"{\"text\":\"Startup manifolds in position. Forming accretion disc...\"}", "level":0}
# 97s - "Engaging gravitational amplifiers..."
execute if score #dem dem.timer matches 1940 run function dem:broadcast {"text":"{\"text\":\"Engaging gravitational amplifiers...\"}", "level":0}
# 100s - "Performing gravitational amplification at 10²⁸% with ease-in interpolation."
execute if score #dem dem.timer matches 2000 run function dem:broadcast {"text":"{\"text\":\"Performing gravitational amplification at 10²⁸% with ease-in interpolation.\"}", "level":0}
# 123s - "Raising startup manifolds..."
execute if score #dem dem.timer matches 2460 run function dem:broadcast {"text":"{\"text\":\"Raising startup manifolds...\"}", "level":0}
# 145s - "Dark Energy Manipulator Startup Sequence Succesful. No errors detected."
execute if score #dem dem.timer matches 2900 run function dem:broadcast {"text":"{\"text\":\"Dark Energy Manipulator Startup Sequence Succesful. No errors detected.\"}", "level":1}
# (Disabled) Radial lightning arcs during startup per feedback
# function dem:effects/ring_lightning

# Random display beam during startup
execute if score #dem dem.timer matches 15..75 run function dem:beams/fire_display_random

# Form quickly at ~4s
execute if score #dem dem.timer matches 80 run function dem:blackhole/summon
execute if score #dem dem.timer matches 80 run function dem:startup/finish

# Continue scheduling until finish, fast tick
execute unless score #dem dem.state matches 0 run schedule function dem:startup/step 1t replace

