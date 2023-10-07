# Title -----------------------------------------------------------------------

# Pre-title
# execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.68 ^1.05 ^1 run summon text_display ~ ~ ~ {text:'[{"text":"➖➖➖ Item ➖➖➖","color":"gray","bold":false,"italic":true}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new"],background:0}
# Slot background
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.72 ^0.75 ^0.995 run summon text_display ~ ~ ~ {text:'[{"text":" "}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1.3f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new"],background:-934655414}
# <- display
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-1.02 ^0.72 ^1 run summon text_display ~ ~ ~ {text:'{"text":"placeholder"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.display.previous_resource"],background:0}
# Item
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.72 ^0.68 ^1 run summon text_display ~ ~ ~ {text:'{"text":"placeholder"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.display.resource"],background:0}
# -> display
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.38 ^0.72 ^1 run summon text_display ~ ~ ~ {text:'{"text":"placeholder"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.display.next_resource"],background:0}

# <- interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-1.02 ^0.75 ^1 run summon interaction ~ ~ ~ {width:0.3f,height:0.3f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.previous_resource"]}
# -> interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.38 ^0.75 ^1 run summon interaction ~ ~ ~ {width:0.3f,height:0.3f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.next_resource"]}

# Villager info ---------------------------------------------------------------

# Pre-title
# execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.52 ^1.05 ^1 run summon text_display ~ ~ ~ {text:'[{"text":"➖➖➖ Villager info ➖➖➖","color":"gray","bold":false,"italic":true}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new"],background:0}
# Stock & Price labels
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.15 ^0.8 ^1 run summon text_display ~ ~ ~ {text:'[{"text":"Stock: ","color":"white","bold":false,"italic":false},{"text":"\\nPrice: ","color":"white","bold":false,"italic":false}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new"],alignment:"left",background:0}
# Stock & Price values
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.75 ^0.8 ^1 run summon text_display ~ ~ ~ {text:'{"text":"placeholder"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.display.villager_info"],alignment:"right",background:0}
# Buy / Sell display
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^0.4 ^1 run summon text_display ~ ~ ~ {text:'{"text":"placeholder"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.display.trade_mode"],background:0}

# Buy interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.27 ^0.37 ^1 run summon interaction ~ ~ ~ {width:0.3f,height:0.2f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.buy"]}
# Sell interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.25 ^0.37 ^1 run summon interaction ~ ~ ~ {width:0.3f,height:0.2f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.sell"]}

# Quantity selection ----------------------------------------------------------

# Pre-title
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^0.27 ^1 run summon text_display ~ ~ ~ {text:'[{"text":"➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖","color":"dark_gray","bold":false,"italic":true}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new"],background:0}
# Quantity
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.6 ^0.08 ^1 run summon text_display ~ ~ ~ {text:'{"text":"placeholder"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.display.quantity_selection"],alignment:"center",background:0}
# Quantity
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.6 ^0 ^1 run summon text_display ~ ~ ~ {text:'{"text":"placeholder"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.display.transaction_value"],alignment:"left",background:0}
# Add quantity display
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.5 ^0.12 ^1 run summon text_display ~ ~ ~ {text:'{"text":"placeholder"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.display.increase_quantity"],alignment:"left",background:0}
# Remove quantity display
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.44 ^-0.02 ^1 run summon text_display ~ ~ ~ {text:'{"text":"placeholder"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.display.decrease_quantity"],alignment:"left",background:0}

# +1 interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.1 ^0.12 ^1 run summon interaction ~ ~ ~ {width:0.15f,height:0.15f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.+1"]}
# -1 interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.1 ^-0.03 ^1 run summon interaction ~ ~ ~ {width:0.15f,height:0.15f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.-1"]}
# +10 interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.32 ^0.12 ^1 run summon interaction ~ ~ ~ {width:0.17f,height:0.15f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.+10"]}
# -10 interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.32 ^-0.03 ^1 run summon interaction ~ ~ ~ {width:0.17f,height:0.16f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.-10"]}
# +100 interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.6 ^0.12 ^1 run summon interaction ~ ~ ~ {width:0.2f,height:0.15f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.+100"]}
# -100 interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.6 ^-0.03 ^1 run summon interaction ~ ~ ~ {width:0.2f,height:0.15f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.-100"]}
# Max interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.9 ^0.12 ^1 run summon interaction ~ ~ ~ {width:0.2f,height:0.15f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.max"]}
# 0 interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.9 ^-0.03 ^1 run summon interaction ~ ~ ~ {width:0.2f,height:0.15f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.0"]}

# Confirm / Leave -------------------------------------------------------------

# Next balance
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^-0.22 ^1 run summon text_display ~ ~ ~ {text:'{"text":"placeholder"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.display.next_balance"],alignment:"left",background:0}

# Leave display
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-1 ^-0.45 ^1 run summon text_display ~ ~ ~ {text:'{"text":"placeholder"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.display.leave"],background:0}
# Confirm display
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^1 ^-0.45 ^1 run summon text_display ~ ~ ~ {text:'{"text":"placeholder"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.display.confirm"],background:0}
# Next client
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^-0.4 ^1 run summon text_display ~ ~ ~ {text:'{"text":"placeholder"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.display.next_client"],background:0}

# Leave interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-1 ^-0.45 ^1 run summon interaction ~ ~ ~ {width:0.3f,height:0.3f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.leave"]}
# Confirm interaction
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^1 ^-0.45 ^1 run summon interaction ~ ~ ~ {width:0.3f,height:0.3f,Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.interaction.confirm"]}

# Background ------------------------------------------------------------------

# Header
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.25 ^0.63 ^0.97 run summon text_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[20f,2.3f,1f]},text:'{"text":" ","color":"yellow"}',Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new"],background:-16777216}

# Global
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.25 ^-0.48 ^0.95 run summon text_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[20f,6.3f,1f]},text:'{"text":" ","color":"yellow"}',Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new"],background:-1778384896}

execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest,distance=..2] rotated as @s as @e[tag=wallstreet.villager.gui.new] positioned as @s run tp @s ~ ~ ~ ~ ~

function wallstreet:villager/gui/refresh/all

tag @e[tag=wallstreet.villager.gui.new] remove wallstreet.villager.gui.new