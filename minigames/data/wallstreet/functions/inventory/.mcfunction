item replace entity @a[team=wallstreet] hotbar.0 with stick{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:stick"}}] run function wallstreet:inventory/wood

item replace entity @a[team=wallstreet] hotbar.1 with clay_ball{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:clay_ball"}}] run function wallstreet:inventory/stone

item replace entity @a[team=wallstreet] hotbar.2 with leather{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:leather"}}] run function wallstreet:inventory/leather

item replace entity @a[team=wallstreet] hotbar.3 with iron_ingot{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:iron_ingot"}}] run function wallstreet:inventory/iron

item replace entity @a[team=wallstreet] hotbar.4 with diamond{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:diamond"}}] run function wallstreet:inventory/diamond

execute as @a[team=wallstreet] run item replace entity @s hotbar.6 with emerald{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:emerald"}}] run title @s actionbar [{"text":"You have ","color":"gray","bold":false,"italic":false},{"score":{"name":"@s","objective":"wallstreet.budget"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false}]

function wallstreet:inventory/compass/
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:compass"}}] run function wallstreet:inventory/compass/apply_name

item replace entity @a[team=wallstreet] hotbar.8 with book{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:book"}}] run title @s actionbar [{"text":"Market news","color":"gray","bold":false,"italic":false}]