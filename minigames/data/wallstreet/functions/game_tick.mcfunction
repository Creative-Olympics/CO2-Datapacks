
function wallstreet:villager/
function wallstreet:inventory/

execute store result score #wallstreet.timer.seconds data \
        store result score #wallstreet.timer.modulo data \
    run scoreboard players get #wallstreet.timer data

scoreboard players operation #wallstreet.timer.seconds data /= 20 const

execute store result score #wallstreet.timer.minutes data \
    run scoreboard players add #wallstreet.timer.seconds data 1

scoreboard players operation #wallstreet.timer.seconds data %= 60 const
scoreboard players operation #wallstreet.timer.minutes data /= 60 const
scoreboard players operation #wallstreet.timer.modulo data %= 20 const

function #bs.sidebar:refresh {id:"wallstreet"}

scoreboard players remove #wallstreet.timer data 1

execute if score #wallstreet.timer data matches ..0 run function #wallstreet:end_game