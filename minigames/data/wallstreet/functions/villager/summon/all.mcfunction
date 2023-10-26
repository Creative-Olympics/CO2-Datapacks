
function wallstreet:villager/clear/all

scoreboard players set #wallstreet.villager_count data 0
scoreboard players set #wallstreet.generate_all data 1

function wallstreet:villager/summon/one { \
    name: "Alice", \
    profession: "armorer", \
    type: "taiga", \
    x: -96.5, \
    y: 98.0, \
    z: 126.5, \
    sign_x: -100, \
    sign_y: 99, \
    sign_z: 130, \
    sign_facing: "east", \
    chair_x: -100, \
    chair_y: 98, \
    chair_z: 126 \
}

function wallstreet:villager/summon/one { \
    name: "Bob", \
    profession: "armorer", \
    type: "jungle", \
    x: -122.5, \
    y: 99.0, \
    z: 119.5, \
    sign_x: -120, \
    sign_y: 101, \
    sign_z: 122, \
    sign_facing: "south", \
    chair_x: -121, \
    chair_y: 99, \
    chair_z: 117 \
}

function wallstreet:villager/summon/one { \
    name: "Charlie", \
    profession: "librarian", \
    type: "taiga", \
    x: -114.5, \
    y: 98.0, \
    z: 130.0, \
    sign_x: -118, \
    sign_y: 100, \
    sign_z: 128, \
    sign_facing: "east", \
    chair_x: -115, \
    chair_y: 98, \
    chair_z: 127 \
}

function wallstreet:villager/summon/one { \
    name: "Delphine", \
    profession: "librarian", \
    type: "jungle", \
    x: -111.5, \
    y: 97.0, \
    z: 138.5, \
    sign_x: -109, \
    sign_y: 99, \
    sign_z: 140, \
    sign_facing: "south", \
    chair_x: -112, \
    chair_y: 97, \
    chair_z: 141 \
}

scoreboard players set #wallstreet.generate_all data 0
execute as @e[tag=wallstreet.villager_marker] at @s run function wallstreet:economy_model/initial_resources_supply