
function one_in_the_chamber:map/remove_start_sign

execute positioned -183.5 97.5 -96.5 run function #lib:start_animation { \
    minigame: "OITC", \
    color: "red", \
    size: 5, \
    start_callback: "one_in_the_chamber:start/start", \
    cancel_callback: "one_in_the_chamber:map/place_start_sign", \
}
