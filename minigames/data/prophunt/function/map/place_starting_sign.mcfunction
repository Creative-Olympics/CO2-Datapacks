setblock 112 82 66 minecraft:quartz_pillar
setblock 111 82 66 minecraft:birch_wall_sign[facing=west,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"blue",has_glowing_text:0b,messages:['{"clickEvent":{"action":"run_command","value":"function #prophunt:events/launch"},"color":"blue","text":" "}','{"color":"blue","text":"Start"}','{"color":"blue","text":"PROPHUNT"}','{"text":""}']},is_waxed:0b}
execute positioned 112 82 66 run playsound minecraft:block.stone.place master @a[distance=..10]
