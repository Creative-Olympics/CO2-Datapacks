execute positioned -183.5 97.5 -96.5 run function #common:start_animation { \
    minigame: "OITC", \
    color: "red", \
    size: 5, \
    start_callback: "#one_in_the_chamber:events/start", \
    cancel_callback: "#one_in_the_chamber:events/cancel" \
}
