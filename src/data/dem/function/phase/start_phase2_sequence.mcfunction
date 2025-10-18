# Transition to Phase 2 (post-berserker)
function dem:phase/stop_all

tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Phase 2 commencing. The singularity awakens.","color":"#ffD090"}]

scoreboard players set #dem dem.phase 2
scoreboard players set #dem dem.phase_timer 0

