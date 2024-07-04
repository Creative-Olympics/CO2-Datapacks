execute if entity @s[advancements={lobby:click_minimap_poi={mini_market=true}}] \
  positioned -280 97 17 rotated 0 0 run function #common:relocalize_player

execute if entity @s[advancements={lobby:click_minimap_poi={big_market=true}}] \
  positioned -82 99 120 rotated -90 0 run function #common:relocalize_player

execute if entity @s[advancements={lobby:click_minimap_poi={gladiator_place=true}}] \
  positioned 94 98 183 rotated 0 0 run function #common:relocalize_player

execute if entity @s[advancements={lobby:click_minimap_poi={port=true}}] \
  positioned -45 97 -80 rotated 0 0 run function #common:relocalize_player

advancement revoke @s only lobby:click_minimap_poi
