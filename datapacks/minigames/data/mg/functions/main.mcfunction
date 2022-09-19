
#__________________________________________________
# INIT

# Time Exist
scoreboard objectives add timeExist dummy
scoreboard players add @e timeExist 1

# ID
scoreboard objectives add id dummy
scoreboard players add @a id 0
execute as @e[scores={id=0}] run function mg:lib/get_id
scoreboard objectives add parentId dummy

# Location
scoreboard objectives add locX dummy
scoreboard objectives add locY dummy
scoreboard objectives add locZ dummy
execute as @a store result score @s locX run data get entity @s Pos[0] 1
execute as @a store result score @s locY run data get entity @s Pos[1] 1
execute as @a store result score @s locZ run data get entity @s Pos[2] 1

# Other
scoreboard objectives add gameStarted dummy
scoreboard objectives add data dummy
scoreboard objectives add tmp dummy
function mg:lib/constants
scoreboard objectives add damageResisted minecraft.custom:minecraft.damage_resisted

#__________________________________________________
# CALL SYSTEMS

# GAMES
function mg:thimble/main
function mg:tnt_run/main
function mg:jump/main

# COSMETICS
function mg:cosmetics/main

#__________________________________________________
# CALL EASTER-EGGS

function mg:easter_eggs/fountain

#__________________________________________________
# WALL UTILS

function mg:utils/countdown
function mg:utils/anti-drop
# Display areas (armor_stand that indicate a zone to be in or out)
function mg:utils/print_area

# Effects so people can't die
effect give @a resistance 1000000 255 true
#effect give @a weakness 1000000 255 true
effect give @a saturation 1000000 255 true

#__________________________________________________
# OTHER

# Allow everyone to start games -> NEED TO BE DISABLED ONCE EVENT START
tag @a add canLaunchGames


#__________________________________________________
# RESET 1 TICK SCORES & TAGS
scoreboard players set @e damageResisted 0
scoreboard players set SERVER_START data 0
