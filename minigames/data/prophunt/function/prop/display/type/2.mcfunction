# Large grass
scoreboard players set @s prophunt.prop_variation_limit 2
scoreboard players operation @s prophunt.prop_variation %= @s prophunt.prop_variation_limit

execute if score @s prophunt.prop_variation matches 0 run summon minecraft:block_display ~ ~ ~ { \
  teleport_duration:2, \
  brightness:{sky:15,block:15}, \
  block_state:{Name:"tall_grass"}, \
  transformation: [1f,0f,0f,-0.5f,0f,1f,0f,0f,0f,0f,1f,-0.5f,0f,0f,0f,1f], \
  Tags:["prophunt.entity","prophunt.display","prophunt.new"], \
  Passengers:[ \
    {id:"minecraft:interaction",width:1.2f,height:2.2f}, \
    { \
      id:"minecraft:block_display", \
      teleport_duration:2, \
      brightness:{sky:15,block:15}, \
      block_state:{Name:"tall_grass",Properties:{half:"upper"}}, \
      transformation: [1f,0f,0f,-0.5f,0f,1f,0f,1f,0f,0f,1f,-0.5f,0f,0f,0f,1f], \
    }, \
  ], \
}

execute if score @s prophunt.prop_variation matches 1 run summon minecraft:block_display ~ ~ ~ { \
  teleport_duration:2, \
  brightness:{sky:15,block:15}, \
  block_state:{Name:"large_fern"}, \
  transformation: [1f,0f,0f,-0.5f,0f,1f,0f,0f,0f,0f,1f,-0.5f,0f,0f,0f,1f], \
  Tags:["prophunt.entity","prophunt.display","prophunt.new"], \
  Passengers:[ \
    {id:"minecraft:interaction",width:1.2f,height:2.2f}, \
    { \
      id:"minecraft:block_display", \
      teleport_duration:2, \
      brightness:{sky:15,block:15}, \
      block_state:{Name:"large_fern",Properties:{half:"upper"}}, \
      transformation: [1f,0f,0f,-0.5f,0f,1f,0f,1f,0f,0f,1f,-0.5f,0f,0f,0f,1f], \
    }, \
  ], \
}
