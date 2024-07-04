# Short grass
scoreboard players set @s prophunt.prop_variation_limit 2
scoreboard players operation @s prophunt.prop_variation %= @s prophunt.prop_variation_limit

execute if score @s prophunt.prop_variation matches 0 run summon minecraft:block_display ~ ~ ~ { \
  teleport_duration:2, \
  brightness:{sky:15,block:15}, \
  block_state:{Name:"short_grass"}, \
  transformation: [1f,0f,0f,-0.5f,0f,1f,0f,0f,0f,0f,1f,-0.5f,0f,0f,0f,1f], \
  Tags:["prophunt.entity","prophunt.display","prophunt.new"], \
  Passengers:[{id:"minecraft:interaction",width:1.4f,height:1.4f}] \
}

execute if score @s prophunt.prop_variation matches 1 run summon minecraft:block_display ~ ~ ~ { \
  teleport_duration:2, \
  brightness:{sky:15,block:15}, \
  block_state:{Name:"fern"}, \
  transformation: [1f,0f,0f,-0.5f,0f,1f,0f,0f,0f,0f,1f,-0.5f,0f,0f,0f,1f], \
  Tags:["prophunt.entity","prophunt.display","prophunt.new"], \
  Passengers:[{id:"minecraft:interaction",width:1.4f,height:1.4f}] \
}
