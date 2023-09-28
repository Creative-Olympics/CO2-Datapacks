

function prophunt:map/remove_starting_sign

function #lib:start_animation {\
    id: "prophunt",\
    minigame: "PROPHUNT",\
    color: "blue",\
    x: 112.5,\
    y: 82,\
    z: 66.5,\
    size: 5,\
    start_callback: "prophunt:start/start",\
    cancel_callback: "prophunt:start/cancel"\
}
