
function wallstreet:map/remove_starting_sign

execute positioned -114.5 99.5 104.5 run function #lib:start_animation {\
    minigame: "WALLSTREET", \
    color: "yellow", \
    size: 13, \
    start_callback: "wallstreet:start/start", \
    cancel_callback: "wallstreet:map/place_starting_sign", \
}
