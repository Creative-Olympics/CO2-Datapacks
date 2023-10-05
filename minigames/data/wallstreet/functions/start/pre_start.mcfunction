
function wallstreet:map/remove_starting_sign

function #lib:start_animation {\
    id: "wallstreet",\
    minigame: "WALLSTREET",\
    color: "yellow",\
    x: -114.5,\
    y: 99.5,\
    z: 104.5,\
    size: 13,\
    start_callback: "wallstreet:start/start",\
    cancel_callback: "wallstreet:map/place_starting_sign"\
}