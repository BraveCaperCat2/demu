# Begin DEM startup sequence
scoreboard players set #dem dem.state 1
scoreboard players set #dem dem.timer 0
scoreboard players set @s dem.trigger 0
tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"["},{"text":"SYSTEM","color":"light_purple"},{"text":"] "},{"text":"Startup sequence initiated.","color":"dark_purple"}]
function dem:music/start_boot
schedule function dem:startup/step 5t replace
function dem:beams/summon_shooters
function dem:formers/start_sequence

