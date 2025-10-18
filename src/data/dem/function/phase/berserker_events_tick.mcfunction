# Runs during Phase 1 to orchestrate lightning strikes and broadcasts
# Spread events across 7880t; fire roughly every ~200-400t

# Sample cycle using dem_broadcasts.txt phrasing
execute if score #dem dem.phase_timer matches 400..400 run playsound terf:dem.notification ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 400..400 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Stabilizer D-E Engaging!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 400..400 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 800..800 run playsound terf:dem.notification_2 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 800..800 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Stabilizer D-W Coil #1 Damage Detected!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 800..800 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 1200..1200 run playsound terf:dem.notification_3 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 1200..1200 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Power laser N_D- Vitals damage detected!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 1200..1200 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

# Extended cadence across the full 7880t window
execute if score #dem dem.phase_timer matches 1600..1600 run playsound terf:dem.notification_4 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 1600..1600 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Power laser S_U- Coil damage detected!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 1600..1600 positioned 56.528 133 118.476 run function dem:effects/ring_lightning
execute if score #dem dem.phase_timer matches 1600..1600 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 2000..2000 run playsound terf:dem.notification ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 2000..2000 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Energy Collector D-NE damage detected!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 2000..2000 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 2400..2400 run playsound terf:dem.notification_2 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 2400..2400 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Horizon Scrubber temperatures exceeding safe operating parameters","color":"#ff4040"}]
execute if score #dem dem.phase_timer matches 2400..2400 positioned 56.528 133 118.476 run function dem:effects/ring_lightning
execute if score #dem dem.phase_timer matches 2400..2400 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 2800..2800 run playsound terf:dem.notification_3 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 2800..2800 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Power laser E_U- Coil damage detected!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 2800..2800 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 3200..3200 run playsound terf:dem.notification_4 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 3200..3200 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Gravitational shielding critical stress detected!","color":"#ff4040"}]
execute if score #dem dem.phase_timer matches 3200..3200 positioned 56.528 133 118.476 run function dem:effects/ring_lightning
execute if score #dem dem.phase_timer matches 3200..3200 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 3600..3600 run playsound terf:dem.notification ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 3600..3600 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Stabilizer U-N Rotor #1 Damage Critical!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 3600..3600 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 4000..4000 run playsound terf:dem.notification_2 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 4000..4000 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Power laser W_D- Vitals damage detected!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 4000..4000 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 4400..4400 run playsound terf:dem.notification_3 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 4400..4400 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Electromagnetic flux control failure detected.","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 4400..4400 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 4800..4800 run playsound terf:dem.notification_4 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 4800..4800 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Power laser S_D- Coil damage detected!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 4800..4800 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 5200..5200 run playsound terf:dem.notification ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 5200..5200 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Energy Collector U-NW damage detected!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 5200..5200 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 5600..5600 run playsound terf:dem.notification_2 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 5600..5600 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Horizon Scrubber temperatures critical!","color":"#ff4040"}]
execute if score #dem dem.phase_timer matches 5600..5600 positioned 56.528 133 118.476 run function dem:effects/ring_lightning
execute if score #dem dem.phase_timer matches 5600..5600 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 6000..6000 run playsound terf:dem.notification_3 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 6000..6000 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Stabilizer D-E Coil #3 Damage Detected!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 6000..6000 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 6400..6400 run playsound terf:dem.notification_4 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 6400..6400 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Multiple critical faults detected in Horizon Scrubber components.","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 6400..6400 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 6800..6800 run playsound terf:dem.notification ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 6800..6800 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Power laser E_D- Coil damage detected!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 6800..6800 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 7200..7200 run playsound terf:dem.notification_2 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 7200..7200 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Gravitational shielding data unavailable: Critical sensor array failure.","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 7200..7200 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

execute if score #dem dem.phase_timer matches 7600..7600 run playsound terf:dem.notification_3 ambient @a ~ ~ ~ 1 1 1
execute if score #dem dem.phase_timer matches 7600..7600 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Reactor chamber experiencing extreme gravitational fluctuations.","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 7600..7600 positioned 56.528 133 118.476 run function dem:effects/ring_lightning

# Reschedule self each tick only while Phase 1 active
execute if score #dem dem.phase matches 1 run schedule function dem:phase/berserker_events_tick 1t replace

