# Start/loop stabilizers ambient indefinitely
# stop any previous ambient to prevent piling
stopsound @a ambient terf:dem.ambient_loop
stopsound @a master terf:dem.ambient_loop
playsound terf:dem.ambient_loop master @a
schedule function dem:music/start_ambient 160t replace
