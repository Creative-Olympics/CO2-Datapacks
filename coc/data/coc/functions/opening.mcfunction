scoreboard players set @a[gamemode=survival] opening 0
tp @a[scores={opening=0},team=!0config,team=!1staff,team=!y-builder] 0 100 0
###coo a changé
team join z-member @a[scores={opening=0},team=!0config,team=!1staff,team=!a-part,team=!b-sponso,team=!donator1,team=!donator2,team=!team1,team=!team2,team=!team3,team=!team4,team=!team5,team=!team6,team=!team7,team=!team8,team=!team9,team=!uteam10,team=!uteam11,team=!uteam12,team=!uteam13,team=!uteam14,team=!uteam15,team=!uteam16,team=!uteam17,team=!uteam18,team=!uteam19,team=!uteam20,team=!y-builder]
gamemode adventure @a[scores={opening=0},team=!0config,team=!1staff,team=!y-builder]
title @a[scores={opening=0},team=!0config,team=!1staff,team=!y-builder] title ["",{"text":"Cre","color":"blue"},{"text":"ativ","color":"yellow"},{"text":"e Ol","color":"white"},{"text":"ymp","color":"dark_green"},{"text":"ics","color":"red"}]
title @a[scores={opening=0},team=!0config,team=!1staff,team=!y-builder] subtitle {"text":"Welcome to the opening ceremony","color":"gold"}
tellraw @a[scores={opening=0},team=!0config,team=!1staff,team=!y-builder] [{"text":"Welcome to the opening ceremony of the "},{"text":"Cre","color":"blue"},{"text":"ativ","color":"yellow"},{"text":"e Ol","color":"white"},{"text":"ymp","color":"dark_green"},{"text":"ics","color":"red"},{"text":"!\nThanks for joining us."}]
scoreboard players set @a[gamemode=adventure] opening 1
