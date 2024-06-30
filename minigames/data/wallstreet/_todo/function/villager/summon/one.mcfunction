
$execute positioned $(x) $(y) $(z) as @e[tag=wallstreet.villager_marker,distance=..2] at @s run function wallstreet:villager/clear/one with entity @s data.wallstreet
 
$summon marker $(x) $(y) $(z) {Tags:["wallstreet.entity","wallstreet.villager_marker","wallstreet.villager_marker.new"],data:{wallstreet:{ \
    name: $(name), \
    profession: $(profession), \
    type: $(type), \
    x: $(x), \
    y: $(y), \
    z: $(z), \
    sign_x: $(sign_x), \
    sign_y: $(sign_y), \
    sign_z: $(sign_z), \
    sign_facing: $(sign_facing), \
    chair_x: $(chair_x), \
    chair_y: $(chair_y), \
    chair_z: $(chair_z) \
}}}

execute as @e[tag=wallstreet.villager_marker.new] run function #common:get_id

$execute at @e[tag=wallstreet.villager_marker.new] run summon minecraft:villager ~ ~ ~ {CustomName:'{"text":"$(name)","color":"yellow","bold":true,"italic":true}',CustomNameVisible:1b,VillagerData:{profession:"$(profession)",type:"$(type)"},Tags:["wallstreet.entity","wallstreet.villager","wallstreet.villager.new"], NoAI:1,Offers:{}}

effect give @e[tag=wallstreet.villager] minecraft:slowness infinite 127 true
scoreboard players operation @e[tag=wallstreet.villager.new] parent.SUID = @e[tag=wallstreet.villager_marker.new] SUID


$setblock $(sign_x) $(sign_y) $(sign_z) minecraft:bamboo_wall_hanging_sign[facing=$(sign_facing),waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},is_waxed:0b}

$execute positioned $(chair_x) $(chair_y) $(chair_z) run setblock ~ ~ ~ minecraft:bamboo_fence[east=false,north=false,south=false,waterlogged=false,west=false]
$execute positioned $(chair_x) $(chair_y) $(chair_z) run setblock ~ ~1 ~ minecraft:bamboo_pressure_plate[powered=false]

execute unless score #wallstreet.generate_all data matches 1 as @e[tag=wallstreet.villager_marker.new] at @s run function wallstreet:economy_model/initial_resources_supply

scoreboard players set @e[tag=wallstreet.villager_marker.new] wallstreet.selected_quantity 0
scoreboard players set @e[tag=wallstreet.villager_marker.new] wallstreet.selected_resource 0
scoreboard players set @e[tag=wallstreet.villager_marker.new] wallstreet.taxe 0

execute store result score @e[tag=wallstreet.villager_marker.new] wallstreet.compass.select run scoreboard players add #wallstreet.villager_count data 1

tag @e[tag=wallstreet.villager_marker.new] remove wallstreet.villager_marker.new
tag @e[tag=wallstreet.villager.new] remove wallstreet.villager.new
