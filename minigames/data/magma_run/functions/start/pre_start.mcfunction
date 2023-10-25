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

execute at @e[tag=lib.start_animation.magma_run] run title @a[distance=..21] times 0 90 5
execute at @e[tag=lib.start_animation.magma_run] run title @a[distance=..21] title {"text":" "}
execute at @e[tag=lib.start_animation.magma_run] run title @a[distance=..21] subtitle {"text":"START TO RUN!","color":"gold","bold":true,"italic":true}