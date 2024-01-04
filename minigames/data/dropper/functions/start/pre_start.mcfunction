function dropper:map/remove_starting_sign

function #lib:start_animation {\
    id: "dropper",\
    minigame: "DROPPER",\
    color: "green",\
    x: 135.5,\
    y: 85.5,\
    z: -3.5,\
    size: 5,\
    start_callback: "dropper:start/start",\
    cancel_callback: "dropper:map/place_starting_sign"\
}
