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