

function prophunt:map/remove_starting_sign

execute positioned 112.5 82 66.5 function #lib:start_animation { \
    minigame: "PROPHUNT", \
    color: "blue", \
    size: 5, \
    start_callback: "prophunt:start/start", \
    cancel_callback: "prophunt:start/cancel", \
}
