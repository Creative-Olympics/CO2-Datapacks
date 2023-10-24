team add 0config
team modify 0config color red
team join 0config config
scoreboard objectives add see dummy
scoreboard objectives setdisplay sidebar.team.red see
scoreboard players set config see 1000
scoreboard objectives modify see displayname {"text":"Team List","color":"red"}
scoreboard objectives add setup dummy

scoreboard objectives add opening dummy
tag @a remove open
scoreboard players set * opening 0

scoreboard objectives add closing dummy
tag @a remove close
scoreboard players set * closing 0

tellraw @a[team=0config] ["",{"text":"COC : Reseted\n\nSetup "},{"text":"opening","clickEvent":{"action":"run_command","value":"/scoreboard players set setup setup 1"}},{"text":" / "},{"text":"closing","clickEvent":{"action":"run_command","value":"/scoreboard players set setup setup 2"}}]


team

team add 1staff
team modify 1staff color gray
team modify 1staff prefix {"text":"[Staff] ","color":"blue"}
team join 1staff staff
scoreboard players set staff see 50


team add a-part
team modify a-part prefix {"text":"[Partner] ","color":"dark_red"}
team join a-part partner
scoreboard players set partner see 15


team add b-sponso
team modify b-sponso prefix {"text":"[Sponsor] ","color":"dark_green"}
team join b-sponso sponsor
scoreboard players set sponsor see 14


team add c-streameur
team modify c-streameur prefix {"text":"[Streamer] ","color":"dark_purple"}
team join c-streameur streameur
scoreboard players set streameur see 13


team add donator1
team modify donator1 prefix {"text":"[Donator T2] ","color":"yellow"}
team join donator1 Donator_T2
scoreboard players set Donator_T2 see 12


team add donator2
team modify donator2 prefix {"text":"[Donator T1] ","color":"#f1c40f"}
team join donator2 Donator_T1
scoreboard players set Donator_T1 see 11


team add team1
team modify team1 prefix {"text":"[Team 1] ","color":"gold"}
team join team1 team1
scoreboard players set team1 see 10


team add team2
team modify team2 prefix {"text":"[Team 2] ","color":"#e67e22"}
team join team2 team2
scoreboard players set team2 see 9


team add team3
team modify team3 prefix {"text":"[Team 3] ","color":"#f1c40f"}
team join team3 team3
scoreboard players set team3 see 8


team add team4
team modify team4 prefix {"text":"[Team 4] ","color":"gold"}
team join team4 team4
scoreboard players set team4 see 7


team add team5
team modify team5 prefix {"text":"[Team 5] ","color":"#e67e22"}
team join team5 team5
scoreboard players set team5 see 6


team add team6
team modify team6 prefix {"text":"[Team 6] ","color":"#f1c40f"}
team join team6 team6
scoreboard players set team6 see 5


team add team7
team modify team7 prefix {"text":"[Team 7] ","color":"gold"}
team join team7 team7
scoreboard players set team7 see 4


team add team8
team modify team8 prefix {"text":"[Team 8] ","color":"#e67e22"}
team join team8 team8
scoreboard players set team8 see 3


team add team9
team modify team9 prefix {"text":"[Team 9] ","color":"#f1c40f"}
team join team9 team9
scoreboard players set team9 see 2


team add uteam10
team modify uteam10 prefix {"text":"[Team 10] ","color":"gold"}
team join uteam10 team10
scoreboard players set team10 see 1


team add uteam11
team modify uteam11 prefix {"text":"[Team 11] ","color":"#e67e22"}
team join uteam1 team11
scoreboard players set team11 see 0


team add uteam12
team modify uteam12 prefix {"text":"[Team 12] ","color":"#f1c40f"}
team join uteam12 team12
scoreboard players set team12 see -1


team add uteam13
team modify uteam13 prefix {"text":"[Team 13] ","color":"gold"}
team join uteam13 team13
scoreboard players set team13 see -2


team add uteam14
team modify uteam14 prefix {"text":"[Team 14] ","color":"#e67e22"}
team join uteam14 team14
scoreboard players set team14 see -3


team add uteam15
team modify uteam15 prefix {"text":"[Team 15] ","color":"#f1c40f"}
team join uteam15 team15
scoreboard players set team15 see -4


team add uteam16
team modify uteam16 prefix {"text":"[Team 16] ","color":"gold"}
team join uteam16 team16
scoreboard players set team16 see -5


team add uteam17
team modify uteam17 prefix {"text":"[Team 17] ","color":"#e67e22"}
team join uteam17 team17
scoreboard players set team17 see -6


team add uteam18
team modify uteam18 prefix {"text":"[Team 18] ","color":"#f1c40f"}
team join uteam18 team18
scoreboard players set team18 see -7


team add uteam19
team modify uteam19 prefix {"text":"[Team 19] ","color":"gold"}
team join uteam19 team19
scoreboard players set team19 see -8


team add uteam20
team modify uteam20 prefix {"text":"[Team 20] ","color":"#e67e22"}
team join uteam20 team20
scoreboard players set team20 see -9


team add y-builder
team modify y-builder prefix {"text":"[Builder] ","color":"green"}
team join y-builder viewer
scoreboard players set viewer see -10


team add z-member
team modify z-member prefix {"text":"[Viewer] ","color":"green"}
team join z-member viewer
scoreboard players set viewer see -11

give @a[team=0config] written_book{pages:['["",{"text":"Team : \\n","clickEvent":{"action":"run_command","value":"/function coc:teams/update_team"},"hoverEvent":{"action":"show_text","contents":"Click here to update the teams"}},{"text":"See \\u2714","color":"green","clickEvent":{"action":"run_command","value":"/function coc:see"}},{"text":" / "},{"text":"NoSee \\u2716","color":"dark_red","clickEvent":{"action":"run_command","value":"/function coc:no_see"}},{"text":"\\n\\nStaff : \\n"},{"text":"See \\u2714","color":"green","clickEvent":{"action":"run_command","value":"/team modify 1staff nametagVisibility always"}},{"text":" / "},{"text":"NoSee \\u2716","color":"dark_red","clickEvent":{"action":"run_command","value":"/team modify 1staff nametagVisibility never"}},{"text":"\\n\\nSendCmdFdback : \\n"},{"text":"On \\u2714","color":"green","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback true"}},{"text":" / "},{"text":"Off \\u2716","color":"dark_red","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback false"}},{"text":"\\n\\n"},{"text":"Players List","hoverEvent":{"action":"show_text","contents":"Click here to see the number of players connected (yes there is /list but I didn\'t know that command :/ )"},"clickEvent": {"action": "run_command","value":"/function coc:players"}},{"text":"\\n\\n"},{"text":"[5 minutes left]","clickEvent": {"action": "run_command","value":"/function coc:five_minute_left"}},{"text":"\\n\\n"},{"text":"Start","hoverEvent":{"action":"show_text","contents":"Let\'s go"},"clickEvent": {"action": "run_command","value":"/function coc:start"}},{"text":"  |  "},{"text":"Thanks","hoverEvent":{"action":"show_text","contents":"Thanks all of the staff etc..."},"clickEvent": {"action": "run_command","value":"/function coc:thanks/0"}}]'],title:"Control book",author:fantom,display:{Lore:["This book is for the CO Ceremonies"]}}

gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule announceAdvancements false
gamerule showDeathMessages false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage false
gamerule fallDamage false
gamerule fireDamage false
gamerule keepInventory true

scoreboard players set @s reset 0