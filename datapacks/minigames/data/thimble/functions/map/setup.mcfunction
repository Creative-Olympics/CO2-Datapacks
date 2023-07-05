execute if score THIMBLE_START_TIMER data matches 1 run fill 125 81 18 133 102 26 barrier replace structure_void
execute if score THIMBLE_START_TIMER data matches 1 run fill 135 87 29 141 92 35 barrier replace structure_void
execute if score THIMBLE_START_TIMER data matches 1 run setblock 139 87 33 minecraft:birch_wall_sign[facing=north,waterlogged=false]{Color:"black",Text4:'{"text":""}',Text3:'{"extra":[{"text":"<--"}],"text":""}',Text2:'{"extra":[{"text":"Leave game"}],"text":""}',Text1:'{"text":""}'}
execute if score THIMBLE_START_TIMER data matches 1 run fill 127 80 19 131 80 19 spruce_log[axis=x]
execute if score THIMBLE_START_TIMER data matches 2 run fill 132 80 20 132 80 24 spruce_log[axis=z]
execute if score THIMBLE_START_TIMER data matches 3 run fill 131 80 25 127 80 25 spruce_log[axis=x]
execute if score THIMBLE_START_TIMER data matches 4 run fill 126 80 24 126 80 20 spruce_log[axis=z]
execute if score THIMBLE_START_TIMER data matches 1 run setblock 129 99 17 minecraft:birch_wall_sign[facing=north,waterlogged=false]{Color:"black",Text4:'{"text":""}',Text3:'{"extra":[{"text":"end of the game."}],"text":""}',Text2:'{"extra":[{"text":"Wait until the"}],"text":""}',Text1:'{"text":""}'} destroy
execute if score THIMBLE_START_TIMER data matches 4 run setblock 129 98 21 minecraft:petrified_oak_slab[type=top,waterlogged=false]
execute if score THIMBLE_START_TIMER data matches 3 run setblock 129 98 20 minecraft:petrified_oak_slab[type=double,waterlogged=false]
execute if score THIMBLE_START_TIMER data matches 3 run setblock 129 97 20 minecraft:spruce_fence_gate[facing=north,in_wall=false,open=true,powered=false]
execute if score THIMBLE_START_TIMER data matches 2 run setblock 129 98 19 minecraft:petrified_oak_slab[type=top,waterlogged=false]
execute if score THIMBLE_START_TIMER data matches 2 run setblock 129 97 19 minecraft:petrified_oak_slab[type=top,waterlogged=false]
execute if score THIMBLE_START_TIMER data matches 1 run setblock 129 97 18 minecraft:petrified_oak_slab[type=bottom,waterlogged=false]
execute if score THIMBLE_START_TIMER data matches 1 run setblock 129 96 18 minecraft:spruce_fence_gate[facing=north,in_wall=false,open=true,powered=false]
execute if score THIMBLE_START_TIMER data matches 1 run fill 126 79 19 132 79 25 barrier replace water

playsound minecraft:block.wood.break master @a 129 97 20
