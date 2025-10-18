# Start/loop ambient loop in ~35s bursts while within first ~305s of Phase 0
# Fire at t=1, 700, 1400, 2100, 2800, 3500, 4200, 4900, 5600
execute if score #dem dem.phase_timer matches 1..1 run playsound terf:dem.ambient_loop ambient @a ~ ~ ~ 1 1
execute if score #dem dem.phase_timer matches 700..700 run playsound terf:dem.ambient_loop ambient @a ~ ~ ~ 1 1
execute if score #dem dem.phase_timer matches 1400..1400 run playsound terf:dem.ambient_loop ambient @a ~ ~ ~ 1 1
execute if score #dem dem.phase_timer matches 2100..2100 run playsound terf:dem.ambient_loop ambient @a ~ ~ ~ 1 1
execute if score #dem dem.phase_timer matches 2800..2800 run playsound terf:dem.ambient_loop ambient @a ~ ~ ~ 1 1
execute if score #dem dem.phase_timer matches 3500..3500 run playsound terf:dem.ambient_loop ambient @a ~ ~ ~ 1 1
execute if score #dem dem.phase_timer matches 4200..4200 run playsound terf:dem.ambient_loop ambient @a ~ ~ ~ 1 1
execute if score #dem dem.phase_timer matches 4900..4900 run playsound terf:dem.ambient_loop ambient @a ~ ~ ~ 1 1
execute if score #dem dem.phase_timer matches 5600..5600 run playsound terf:dem.ambient_loop ambient @a ~ ~ ~ 1 1

