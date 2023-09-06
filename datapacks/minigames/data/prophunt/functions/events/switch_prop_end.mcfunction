# Executed as and at the player
# tellraw @a {"text":"prophunt:events/prop_switch_end"}

function prophunt:events/give_prop_items
particle dust 0.667 0.000 1.000 1 ~ ~ ~ 0.5 0.5 0.5 1 500 force
playsound entity.allay.item_thrown master @s ~ ~ ~ 2 2 1
effect clear @s speed
effect clear @s jump_boost

scoreboard players set @s prophunt.drop_trigger 0

# Get a new random prop excepting the previous one
execute store result score $new_prop data run random value 0..11
execute if score $new_prop data >= @s prophunt.prop_type run scoreboard players add $new_prop data 1
scoreboard players operation @s prophunt.prop_type = $new_prop data

execute if score @s prophunt.prop_type matches 0 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"barrel",Properties:{facing:"south"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display"]}
execute if score @s prophunt.prop_type matches 1 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"grass"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display"]}
execute if score @s prophunt.prop_type matches 2 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"fern"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display"]}
execute if score @s prophunt.prop_type matches 3 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"lantern"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display"]}
execute if score @s prophunt.prop_type matches 4 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"chest"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display"]}
execute if score @s prophunt.prop_type matches 5 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"flower_pot"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display"]}

# Door
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"smooth_quartz"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x+1"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"smooth_quartz"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x-1"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"smooth_quartz"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x+1","prophunt.display.shift.y+1"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"smooth_quartz"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x-1","prophunt.display.shift.y+1"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"smooth_quartz"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x+1","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"smooth_quartz"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x-1","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"smooth_quartz"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"smooth_quartz"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x+1","prophunt.display.shift.y-1"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"smooth_quartz"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x-1","prophunt.display.shift.y-1"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"smooth_quartz"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y-1"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"polished_granite_slab"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x+1","prophunt.display.shift.y+3","prophunt.display.never_rotate"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"polished_granite_slab"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x-1","prophunt.display.shift.y+3","prophunt.display.never_rotate"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"polished_granite_slab"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y+3","prophunt.display.never_rotate"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"jungle_door"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display"]}
execute if score @s prophunt.prop_type matches 6 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"jungle_door",Properties:{half:"upper"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y+1"]}

# Spruce tree
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_log",Properties:{axis:"y"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_log",Properties:{axis:"y"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y+1"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_log",Properties:{axis:"y"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_log",Properties:{axis:"y"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y+3"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_log",Properties:{axis:"y"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y+4"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x+1","prophunt.display.shift.y+1"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x-1","prophunt.display.shift.y+1"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.z+1","prophunt.display.shift.y+1"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.z-1","prophunt.display.shift.y+1"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x+1","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x-1","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.z+1","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.z-1","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x+1","prophunt.display.shift.y+3"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x-1","prophunt.display.shift.y+3"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.z+1","prophunt.display.shift.y+3"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.z-1","prophunt.display.shift.y+3"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x+1","prophunt.display.shift.y+5"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x-1","prophunt.display.shift.y+5"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.z+1","prophunt.display.shift.y+5"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.z-1","prophunt.display.shift.y+5"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.y+5"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x+2","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x-2","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.z+2","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.z-2","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x+1","prophunt.display.shift.z+1","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x-1","prophunt.display.shift.z-1","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x+1","prophunt.display.shift.z-1","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x-1","prophunt.display.shift.z+1","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x+1","prophunt.display.shift.z+2","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x-1","prophunt.display.shift.z-2","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x+1","prophunt.display.shift.z-2","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x-1","prophunt.display.shift.z+2","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x+2","prophunt.display.shift.z+1","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x-2","prophunt.display.shift.z-1","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x+2","prophunt.display.shift.z-1","prophunt.display.shift.y+2"]}
execute if score @s prophunt.prop_type matches 7 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"spruce_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate","prophunt.display.shift.x-2","prophunt.display.shift.z+1","prophunt.display.shift.y+2"]}

execute if score @s prophunt.prop_type matches 8 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"barrel",Properties:{facing:"up"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.never_rotate"]}

execute if score @s prophunt.prop_type matches 9 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"composter"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display"]}
execute if score @s prophunt.prop_type matches 9 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"jungle_leaves"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y+1"]}

execute if score @s prophunt.prop_type matches 10 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_fence"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display"]}
execute if score @s prophunt.prop_type matches 10 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_pressure_plate"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y+1"]}
execute if score @s prophunt.prop_type matches 10 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_stairs",Properties:{facing:"east"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x+1"]}
execute if score @s prophunt.prop_type matches 10 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_stairs",Properties:{facing:"west"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x-1"]}

execute if score @s prophunt.prop_type matches 11 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_fence"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display"]}
execute if score @s prophunt.prop_type matches 11 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_pressure_plate"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y+1"]}
execute if score @s prophunt.prop_type matches 11 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_stairs",Properties:{facing:"east"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x+1"]}
execute if score @s prophunt.prop_type matches 11 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_stairs",Properties:{facing:"south"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.z+1"]}

execute if score @s prophunt.prop_type matches 12 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_fence"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display"]}
execute if score @s prophunt.prop_type matches 12 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_pressure_plate"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y+1"]}
execute if score @s prophunt.prop_type matches 12 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_fence"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x+1"]}
execute if score @s prophunt.prop_type matches 12 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_pressure_plate"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y+1","prophunt.display.shift.x+1"]}
execute if score @s prophunt.prop_type matches 12 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_fence"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x-1"]}
execute if score @s prophunt.prop_type matches 12 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_pressure_plate"},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.y+1","prophunt.display.shift.x-1"]}
execute if score @s prophunt.prop_type matches 12 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_stairs",Properties:{facing:"north"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x+1","prophunt.display.shift.z-1"]}
execute if score @s prophunt.prop_type matches 12 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_stairs",Properties:{facing:"south"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x+1","prophunt.display.shift.z+1"]}
execute if score @s prophunt.prop_type matches 12 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_stairs",Properties:{facing:"north"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x-1","prophunt.display.shift.z-1"]}
execute if score @s prophunt.prop_type matches 12 run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},block_state:{Name:"dark_oak_stairs",Properties:{facing:"south"}},teleport_duration:1,Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_display","prophunt.display.shift.x-1","prophunt.display.shift.z+1"]}

# Hitbox
execute if score @s prophunt.prop_type matches 6 run summon interaction ~ ~ ~ {Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_hitbox","prophunt.prop_hitbox.bottom","prophunt.prop_hitbox.top"],width:3f,height:3.5f}
execute if score @s prophunt.prop_type matches 7 run summon interaction ~ ~ ~ {Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_hitbox","prophunt.prop_hitbox.bottom","prophunt.prop_hitbox.top"],width:5f,height:7f}
execute unless score @s prophunt.prop_type matches 6..7 run summon interaction ~ ~ ~ {Tags:["prophunt","prophunt.prop_entity","prophunt.prop_entity.new","prophunt.prop_hitbox","prophunt.prop_hitbox.bottom","prophunt.prop_hitbox.top"],width:2.5f,height:2.5f}

scoreboard players operation @e[tag=prophunt.prop_entity.new] prophunt.parent_UUID = @s UUID

scoreboard players set @s prophunt.prop_switch_cooldown 100