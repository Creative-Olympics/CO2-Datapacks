setblock 123 99 8 minecraft:andesite_stairs[facing=south,half=bottom,shape=straight,waterlogged=false] destroy
setblock 123 99 9 minecraft:air destroy
setblock 123 99 9 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{has_glowing_text:0b,messages:['{"clickEvent":{"action":"run_command","value":"function #dropper:start"},"color":"green","text":" "}','{"color":"green","text":"Start"}','{"color":"green","text":"DROPPER"}','{"text":""}']},is_waxed:0b}
