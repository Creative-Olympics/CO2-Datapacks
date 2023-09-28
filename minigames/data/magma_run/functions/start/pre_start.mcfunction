
# Iinit -----------------------------------------------------------------------

# Summon marker entity
execute if score #magma_run:start_anim data matches 1 unless entity @e[tag=magma_run.start_anim] run summon minecraft:marker -215.5 100.5 17.5 {Tags:["magma_run.start_anim"]}


setblock 112 82 66 air destroy
setblock 111 82 66 air destroy

function magma_run:map/remove_starting_signs

function #lib:start_animation {\
    id: "magma_run",\
    minigame: "MAGMA RUN",\
    color: "gold",\
    x: -215.5,\
    y: 100.5,\
    z: 17.5,\
    size: 20,\
    start_callback: "magma_run:start/start",\
    cancel_callback: "magma_run:map/place_starting_signs"\
}
