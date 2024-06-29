# Game time to 5min
scoreboard players set $prophunt.remaining_time data 6000

scoreboard players operation #prophunt.timer.seconds data = $prophunt.remaining_time data
scoreboard players operation #prophunt.timer.seconds data /= 20 const
execute store result score #prophunt.timer.minutes data run scoreboard players add #prophunt.timer.seconds data 1

scoreboard players operation #prophunt.timer.minutes data /= 60 const
scoreboard players operation #prophunt.timer.seconds data %= 60 const

function #bs.sidebar:create { \
    objective:"prophunt.sidebar", \
    display_name:'{"text":"PROPHUNT","color":"blue","bold":true,"italic":true}', \
    contents: [ \
        '{"text":" "}', \
        '[{"text":" "},{"score":{"name":"$prophunt.prop_count","objective":"data"}},{"text":" prop(s) left"}]', \
        '{"text":" "}', \
        '[{"text":" Remaining time: "},{"score":{"name":"#prophunt.timer.minutes","objective":"data"}},{"text":"m "},{"score":{"name":"#prophunt.timer.seconds","objective":"data"}},{"text":"s"}]', \
        '{"text":" "}', \
    ], \
}

scoreboard objectives setdisplay sidebar.team.blue prophunt.sidebar
