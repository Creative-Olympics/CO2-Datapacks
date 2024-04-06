
scoreboard players operation #prophunt.timer.seconds data = $prophunt.remaining_time data
scoreboard players operation #prophunt.timer.seconds data /= 20 const
execute store result score #prophunt.timer.minutes data run scoreboard players add #prophunt.timer.seconds data 1

scoreboard players operation #prophunt.timer.minutes data /= 60 const
scoreboard players operation #prophunt.timer.seconds data %= 60 const

function #bs.sidebar:refresh {objective:"prophunt.timer"}