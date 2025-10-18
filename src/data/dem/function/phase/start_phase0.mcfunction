# Start Phase 0: lullaby + ash ceiling, then transition to Phase 1 at 2420t
function dem:phase/stop_all

# Broadcast (styled like dem_broadcasts.txt)
function dem:broadcast {"text":"{\"text\":\"The underworld city holds its breath...\",\"color\":\"#ffD090\"}", "level":0}

# Start lullaby (2m03s = 2460t) on music channel for all players, force audibility
playsound terf:music.battlejuice_underworld_city_lullaby music @a ~ ~ ~ 1 1 1

# Init timers
scoreboard players set #dem dem.phase 0
scoreboard players set #dem dem.phase_timer 0

# Spawn ash ceiling once (20x20 layer above head) then begin tick loop
execute as @a at @s positioned ~ ~5 ~ run particle ash ~ ~ ~ 20 0.2 20 0.01 400 force
schedule function dem:phase/tick_phase0 1t replace

