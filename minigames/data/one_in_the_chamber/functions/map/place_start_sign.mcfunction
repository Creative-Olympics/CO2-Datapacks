function one_in_the_chamber:map/remove_start_sign

setblock -184 97 -96 minecraft:birch_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"red",has_glowing_text:0b,messages:['{"clickEvent":{"action":"run_command","value":"function #one_in_the_chamber:start"},"color":"red","text":"Start"}','{"color":"red","text":"ONE IN THE"}','{"color":"red","text":"CHAMBER"}','{"text":""}']},is_waxed:0b}
setblock -184 97 -97 minecraft:quartz_pillar