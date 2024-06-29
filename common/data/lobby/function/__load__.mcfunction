

scoreboard objectives add leave_game minecraft.custom:minecraft.leave_game

# Global teams ----------------------------------------------------------------

team add lobby
team modify lobby color white
team modify lobby friendlyFire false
team modify lobby seeFriendlyInvisibles true


tag B5-0-0-0-1 add permanent
tag B5-0-0-0-2 add permanent
tag B5-0-0-0-3 add permanent
kill @e[type=!player,type=!item_frame,type=!painting,tag=!permanent]
