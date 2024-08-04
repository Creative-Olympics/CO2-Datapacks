execute store result score $prophunt.prop_count data if entity @a[team=prophunt,tag=prophunt.is_prop]
execute store result score $prophunt.hunter_count data if entity @a[team=prophunt,tag=prophunt.is_hunter]

execute store result score #prophunt.timer.ticks data run scoreboard players operation #prophunt.timer.seconds data = $prophunt.remaining_time data
execute store result score #prophunt.timer.minutes data run scoreboard players operation #prophunt.timer.seconds data /= 20 const
scoreboard players operation #prophunt.timer.ticks data %= 20 const

scoreboard players operation #prophunt.timer.minutes data /= 60 const
scoreboard players operation #prophunt.timer.seconds data %= 60 const

# early return if there is nothing to update
execute if score #prophunt.timer.ticks data matches 1.. \
  if score #prophunt.prop_count data = $prophunt.prop_count data \
  if score #prophunt.hunter_count data = $prophunt.hunter_count data \
  run return 0

function #bs.sidebar:refresh {objective:"prophunt.sidebar"}

scoreboard players operation #prophunt.prop_count data = $prophunt.prop_count data
scoreboard players operation #prophunt.hunter_count data = $prophunt.hunter_count data
