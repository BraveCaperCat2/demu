# Play ambient loop every 35s (700t), up to 5 times after startup
execute if score #dem dem.ambient_loops matches ..4 run playsound terf:dem.ambient_loop ambient @a
execute if score #dem dem.ambient_loops matches ..4 run scoreboard players add #dem dem.ambient_loops 1
execute if score #dem dem.ambient_loops matches ..4 run schedule function dem:music/ambient_loop_tick 700t replace

