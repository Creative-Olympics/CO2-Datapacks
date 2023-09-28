
$summon marker $(x) $(y) $(z) {Tags:["lib.start_animation","lib.start_animation.$(id)","lib.start_animation.new"]}

$data modify entity @e[tag=lib.start_animation.new,limit=1] data.start_animation.id set value $(id)
$data modify entity @e[tag=lib.start_animation.new,limit=1] data.start_animation.size set value $(size)
$data modify entity @e[tag=lib.start_animation.new,limit=1] data.start_animation.start_callback set value "$(start_callback)"
$data modify entity @e[tag=lib.start_animation.new,limit=1] data.start_animation.cancel_callback set value "$(cancel_callback)"
$data modify entity @e[tag=lib.start_animation.new,limit=1] data.start_animation.minigame set value "$(minigame)"
$data modify entity @e[tag=lib.start_animation.new,limit=1] data.start_animation.color set value "$(color)"