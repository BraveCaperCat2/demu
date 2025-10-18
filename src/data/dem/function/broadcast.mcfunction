$scoreboard players set level terf_states $(level)
$execute if score level terf_states matches 0 run tellraw @a[distance=0..] ["",{"text":"["},{"text":"DEM","color":"blue"},{"text":"] > "},$(text)]
$execute if score level terf_states matches 1 run tellraw @a[distance=0..] ["",{"text":"["},{"text":"DEM","color":"blue"},{"text":" | "},{"text":"ATTENTION","color":"aqua"},{"text":"] > "},$(text)]
$execute if score level terf_states matches 2 run tellraw @a[distance=0..] ["",{"text":"["},{"text":"DEM","color":"blue"},{"text":" | "},{"text":"URGENT","color":"yellow"},{"text":"] > "},$(text)]
$execute if score level terf_states matches 3 run tellraw @a[distance=0..] ["",{"text":"["},{"text":"DEM","color":"blue"},{"text":" | "},{"text":"HIGH LEVEL","color":"red"},{"text":"] > "},$(text)]

execute if score level terf_states matches 0 run playsound terf:dem.notification ambient @a[distance=0..] ~ ~ ~ 8 1
execute if score level terf_states matches 1 run playsound terf:dem.notification ambient @a[distance=0..] ~ ~ ~ 8 1
execute if score level terf_states matches 2 run playsound terf:dem.notification ambient @a[distance=0..] ~ ~ ~ 8 1
execute if score level terf_states matches 3 run playsound terf:dem.notification ambient @a[distance=0..] ~ ~ ~ 8 2

# Plays voicelines, not needed for DEM.
# stopsound @a[distance=..128] voice
# $playsound terf:voicelines.$(voiceline) voice @a[distance=0..] ~ ~ ~ 8 0.9
# 
# scoreboard players add @s terf_data_Ae 1
# execute if score @s terf_data_Ae matches 15.. run function terf:entity/machines/mainframe/crash_connected_mainframe
# 
# execute unless dimension minecraft:overworld run return fail

#clean up text
$data modify entity 0010ccd2-0010-cd37-0010-cd360010c8e1 CustomName set value '[$(text)]'
data modify entity 0010effb-0010-ccd3-0010-f0550010cd2c text set from entity 0010ccd2-0010-cd37-0010-cd360010c8e1 CustomName

data modify storage terf:temp args set value {arg1:'data modify storage terf:temp temp set value  '}
data modify storage terf:temp args.arg2 set from entity 0010effb-0010-ccd3-0010-f0550010cd2c text
function datapipes_lib:require/with_args/2 with storage terf:temp args

data modify storage terf:temp args.output set from storage terf:temp temp.text
data modify storage terf:temp array set from storage terf:temp temp.extra
function terf:require/cmb_text_array/iterate

#remove quotes
data modify storage terf:temp args.arg1 set value 'data modify storage terf:temp args.output set value '
data modify storage terf:temp args.arg2 set from storage terf:temp args.output
function datapipes_lib:require/with_args/2 with storage terf:temp args

data modify storage terf:temp args.arg1 set value 'discordsrv broadcast :dem_os: **[DEM]** » '
data modify storage terf:temp args.arg2 set from storage terf:temp args.output
function datapipes_lib:require/with_args/2 with storage terf:temp args

#always remember to reset the text of this after using it
data modify entity 0010effb-0010-ccd3-0010-f0550010cd2c text set value '""'