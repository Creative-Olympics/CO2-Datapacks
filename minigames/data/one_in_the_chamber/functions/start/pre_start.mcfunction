
function one_in_the_chamber:map/remove_start_sign

function #lib:start_animation {\
    id: "one_in_the_chamber",\
    minigame: "OITC",\
    color: "red",\
    x: -183.5,\
    y: 97.5,\
    z: -96.5,\
    size: 5,\
    start_callback: "one_in_the_chamber:start/start",\
    cancel_callback: "one_in_the_chamber:map/place_start_sign"\
}