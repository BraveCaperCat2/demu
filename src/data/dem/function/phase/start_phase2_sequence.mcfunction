# Transition to Phase 2 (post-berserker)
function dem:phase/stop_all

function dem:broadcast {"text":"{\"text\":\"Phase 2 commencing. The singularity awakens.\",\"color\":\"#ffD090\"}", "level":0}

scoreboard players set #dem dem.phase 2
scoreboard players set #dem dem.phase_timer 0

