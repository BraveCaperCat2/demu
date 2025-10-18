# DEM load: initialize scoreboard and state
scoreboard objectives add dem.state dummy
scoreboard objectives add dem.timer dummy
scoreboard objectives add dem.trigger trigger
scoreboard objectives add dem.phase dummy
scoreboard objectives add dem.phase_timer dummy
scoreboard objectives add dem.mass dummy
scoreboard objectives add dem.ambient_loops dummy
scoreboard players set @a dem.trigger 0
tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"["},{"text":"SYSTEM","color":"light_purple"},{"text":"] "},{"text":"Dark Energy Manipulator datapack initialized.","color":"dark_purple"}]

