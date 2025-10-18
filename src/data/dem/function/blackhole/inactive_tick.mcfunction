# Scale mass display by scoreboard dem.mass (0..100 -> 0.5..3.0)
execute as @e[type=item_display,tag=dem_mass_display,limit=1,sort=nearest] run data merge entity @s {transformation:{scale:[1.0f,1.0f,1.0f]}}
# Simple mapping using steps; later we can compute exact scale via storage
execute if score #dem dem.mass matches 0.. run data merge entity @e[type=item_display,tag=dem_mass_display,limit=1,sort=nearest] {transformation:{scale:[0.5f,0.5f,0.5f]}}
execute if score #dem dem.mass matches 20.. run data merge entity @e[type=item_display,tag=dem_mass_display,limit=1,sort=nearest] {transformation:{scale:[1.0f,1.0f,1.0f]}}
execute if score #dem dem.mass matches 40.. run data merge entity @e[type=item_display,tag=dem_mass_display,limit=1,sort=nearest] {transformation:{scale:[1.5f,1.5f,1.5f]}}
execute if score #dem dem.mass matches 60.. run data merge entity @e[type=item_display,tag=dem_mass_display,limit=1,sort=nearest] {transformation:{scale:[2.0f,2.0f,2.0f]}}
execute if score #dem dem.mass matches 80.. run data merge entity @e[type=item_display,tag=dem_mass_display,limit=1,sort=nearest] {transformation:{scale:[2.5f,2.5f,2.5f]}}
execute if score #dem dem.mass matches 95.. run data merge entity @e[type=item_display,tag=dem_mass_display,limit=1,sort=nearest] {transformation:{scale:[3.0f,3.0f,3.0f]}}

# Reschedule
schedule function dem:blackhole/inactive_tick 10t replace
