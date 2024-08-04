execute positioned -114.5 99.5 104.5 run function #common:start_animation {\
    minigame: "WALLSTREET", \
    color: "yellow", \
    size: 13, \
    start_callback: "#wallstreet:events/start", \
    cancel_callback: "#wallstreet:events/cancel" \
}
