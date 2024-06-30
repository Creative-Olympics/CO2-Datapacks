execute positioned 135.5 85.5 -3.5 run function #common:start_animation { \
    minigame: "DROPPER", \
    color: "green", \
    size: 5, \
    start_callback: "#dropper:events/start", \
    cancel_callback: "#dropper:events/cancel" \
}
