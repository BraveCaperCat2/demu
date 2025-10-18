# Start full former sequence timed to 3220t
function dem:formers/summon
# after ~1600t, begin retract
schedule function dem:formers/start_retract 1600t replace
