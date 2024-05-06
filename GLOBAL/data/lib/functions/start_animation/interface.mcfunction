summon marker ~ ~ ~ {Tags:["lib.start_animation","lib.start_animation.new"]}

$data modify entity @e[type=marker,tag=lib.start_animation.new,limit=1] data.start_animation set value { \
  minigame: "$(minigame)", \
  color: "$(color)", \
  size: $(size), \
  start_callback: "$(start_callback)", \
  cancel_callback: "$(cancel_callback)", \
}

tag @e[type=marker,tag=lib.start_animation.new,limit=1] remove lib.start_animation.new
