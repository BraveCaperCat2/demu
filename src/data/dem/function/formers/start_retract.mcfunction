# Retract formers gradually upward and spin; stop at Y=165
execute as @e[type=item_display,tag=dem_former] if entity @s[y=..165] at @s run tp @s ~ ~0.05 ~ ~6 ~

# Broadcast cue when retract starts (styled like dem_broadcasts.txt)
execute if score dem.timer matches 1600..1600 run function dem:broadcast {"text":"{\"text\":\"Retracting accretion formers...\",\"color\":\"#ffD090\"}", level:0}

schedule function dem:formers/start_retract 5t replace
