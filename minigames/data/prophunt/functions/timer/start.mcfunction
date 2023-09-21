
function #bs.sidebar:create { \
    id:"prophunt.timer", \
    name:'{"text":"PROPHUNT","color":"blue","bold":true}', \
    contents: [ \
        '{"text":" "}', \
        '[{"text":" "},{"score":{"name":"#prophunt.prop_count","objective":"data"}},{"text":" prop(s) left"}]', \
        '{"text":" "}', \
        '[{"text":" Remaining time: "},{"score":{"name":"#prophunt.timer.minutes","objective":"data"}},{"text":"m "},{"score":{"name":"#prophunt.timer.seconds","objective":"data"}},{"text":"s"}]', \
        '{"text":" "}', \
    ], \
}

scoreboard objectives setdisplay sidebar.team.blue bs.sidebar.prophunt.timer