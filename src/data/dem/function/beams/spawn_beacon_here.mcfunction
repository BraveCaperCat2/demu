# Place a temporary powered beacon at the current executor position
# Build 3x3 iron base below, beacon at ~ ~ ~, colored glass above
setblock ~-1 ~-1 ~-1 minecraft:iron_block
setblock ~-1 ~-1 ~ minecraft:iron_block
setblock ~-1 ~-1 ~1 minecraft:iron_block
setblock ~ ~-1 ~-1 minecraft:iron_block
setblock ~ ~-1 ~ minecraft:iron_block
setblock ~ ~-1 ~1 minecraft:iron_block
setblock ~1 ~-1 ~-1 minecraft:iron_block
setblock ~1 ~-1 ~ minecraft:iron_block
setblock ~1 ~-1 ~1 minecraft:iron_block

setblock ~ ~ ~ minecraft:beacon
setblock ~ ~1 ~ minecraft:purple_stained_glass

# Beam sound
playsound terf:charge_up.lasercharging master @a[distance=..80]

# Auto-clear after 30t
schedule function dem:beams/clear_beacon_here 30t replace
