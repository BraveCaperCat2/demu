# DEM load: initialize scoreboard and state
scoreboard objectives add dem.state dummy
scoreboard objectives add dem.timer dummy
scoreboard objectives add dem.trigger trigger
scoreboard objectives add dem.phase dummy
scoreboard objectives add dem.phase_timer dummy
scoreboard objectives add dem.mass dummy
scoreboard objectives add dem.ambient_loops dummy
scoreboard players set @a dem.trigger 0

#broadcast loaded message
execute unless score no_load_message terf_states matches 1 run tellraw @a ["",{"text":"["},{"text":"S","color":"red"},{"text":"Y","color":"gold"},{"text":"S","color":"yellow"},{"text":"T","color":"green"},{"text":"E","color":"aqua"},{"text":"M","color":"green"},{"text":"] Dark Energy Manipulator datapack loaded!"}]