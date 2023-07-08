
#add the players in the zone to the minigame
execute positioned -87.41 96.00 -154.55 as @a[tag=!InBoatRoyal,dx=87,dz=68] at @s run function boat_royal:join

#replenish arrows
item replace entity @a[tag=InBoatRoyal] weapon.offhand with arrow 1

#checks if the players are out of boat
tag @a[tag=InBoatRoyal] add BRoyalLeave
execute as @a[tag=InBoatRoyal] on vehicle on passengers run tag @s remove BRoyalLeave
execute as @a[tag=BRoyalLeave] at @s run function boat_royal:leave

#kill the empty boats
tag @e[type=boat,tag=boat_royal] add BRoyalEmpty
execute as @e[type=boat,tag=boat_royal] on passengers on vehicle run tag @s remove BRoyalEmpty
kill @e[type=boat,tag=BRoyalEmpty]

#kill the empty chest_boats
tag @e[type=chest_boat,tag=boat_royal] add BRoyalEmpty
execute as @e[type=chest_boat,tag=boat_royal] on passengers on vehicle run tag @s remove BRoyalEmpty
kill @e[type=chest_boat,tag=BRoyalEmpty]

