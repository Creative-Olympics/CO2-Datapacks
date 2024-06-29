execute unless items entity @s hotbar.0 bow run function boat_royal:hotbar/replace
execute unless items entity @s hotbar.1 crossbow run function boat_royal:hotbar/replace
execute unless items entity @s inventory.8 arrow run function boat_royal:hotbar/replace

advancement revoke @s only boat_royal:update_hotbar
