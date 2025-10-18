# Begin DEM startup sequence
scoreboard players set #dem dem.state 1
scoreboard players set #dem dem.timer 0
scoreboard players set @s dem.trigger 0
function dem:broadcast {"text": "{\"text\":\"Dark Energy Manipulator startup sequuence confirmed! Proceeding with reactor startup.\"}", level:2}
function dem:music/start_boot
schedule function dem:startup/step 5t replace
function dem:beams/summon_shooters
function dem:formers/start_sequence

