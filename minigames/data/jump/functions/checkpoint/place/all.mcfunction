kill @e[type=marker,tag=jump.checkpoint]
scoreboard players set $jump.checkpoint_count data 0

execute positioned -302.5 103.0 14.5 summon marker run function jump:checkpoint/place/setup {size:1.5,time:100,y_limit:0.0}
execute positioned -293.5 105.5 21.5 summon marker run function jump:checkpoint/place/setup {size:2.5,time:80,y_limit:101.0}
execute positioned -277.5 103.0 20.7 summon marker run function jump:checkpoint/place/setup {size:0.7,time:100,y_limit:102.0}
execute positioned -272.5 104.0 12.3 summon marker run function jump:checkpoint/place/setup {size:0.7,time:150,y_limit:101.0}
execute positioned -274.5 105.5 0.5 summon marker run function jump:checkpoint/place/setup {size:2.5,time:140,y_limit:103.0}
execute positioned -288.0001 105.0 8.7 summon marker run function jump:checkpoint/place/setup {size:1.0,time:150,y_limit:100.0}
execute positioned -265.5 110.5 20.5 summon marker run function jump:checkpoint/place/setup {size:2.0,time:180,y_limit:104.0}
execute positioned -278.5 104.5 16.3 summon marker run function jump:checkpoint/place/setup {size:0.7,time:140,y_limit:103.0}
execute positioned -282.5 104.5 16.3 summon marker run function jump:checkpoint/place/setup {size:0.7,time:70,y_limit:103.0}
execute positioned -291.5 108.0 16.3 summon marker run function jump:checkpoint/place/setup {size:0.7,time:30,y_limit:103.0}
execute positioned -306.5 107.0 13.5 summon marker run function jump:checkpoint/place/setup {size:1.5,time:80,y_limit:104.0}
execute positioned -317.5 106.5 19.5 summon marker run function jump:checkpoint/place/setup {size:2.5,time:130,y_limit:103.0}
execute positioned -298.5 107.0 29.5 summon marker run function jump:checkpoint/place/setup {size:2.5,time:180,y_limit:103.0}
execute positioned -326.5 106.0 33.5 summon marker run function jump:checkpoint/place/setup {size:3.5,time:700,y_limit:101.0}
execute positioned -328.5 115.0 21.5 summon marker run function jump:checkpoint/place/setup {size:2.5,time:150,y_limit:104.0}
execute positioned -352.5 102.5 28.5 summon marker run function jump:checkpoint/place/setup {size:2.5,time:150,y_limit:101.0}
execute positioned -355.5 101.5 17.5 summon marker run function jump:checkpoint/place/setup {size:2.5,time:60,y_limit:101.0}
execute positioned -340.5 103.0 15.5 summon marker run function jump:checkpoint/place/setup {size:2.5,time:60,y_limit:99.0}
execute positioned -326.5 103.0 11.5 summon marker run function jump:checkpoint/place/setup {size:2.5,time:130,y_limit:100.0}
execute positioned -332.5 108.0 8.5 summon marker run function jump:checkpoint/place/setup {size:2.5,time:80,y_limit:101.0}
execute positioned -327.5 110.0 1.5 summon marker run function jump:checkpoint/place/setup {size:2.5,time:60,y_limit:105.0}
execute positioned -336.5 111.5 1.5 summon marker run function jump:checkpoint/place/setup {size:2.5,time:0,y_limit:108.0}

scoreboard players add $jump.checkpoint_count data 1
