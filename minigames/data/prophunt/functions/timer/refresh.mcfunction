
scoreboard players set #prophunt.timer.minutes data 0
scoreboard players set #prophunt.timer.seconds data 0

scoreboard players operation #prophunt.timer.minutes data = $prophunt.remaining_time data
scoreboard players operation #prophunt.timer.seconds data = $prophunt.remaining_time data

scoreboard players operation #prophunt.timer.minutes data /= 20 const
scoreboard players operation #prophunt.timer.seconds data /= 20 const

scoreboard players add #prophunt.timer.minutes data 1
scoreboard players add #prophunt.timer.seconds data 1

scoreboard players operation #prophunt.timer.minutes data /= 60 const
scoreboard players operation #prophunt.timer.seconds data %= 60 const

function #bs.sidebar:refresh {id:"prophunt.timer"}