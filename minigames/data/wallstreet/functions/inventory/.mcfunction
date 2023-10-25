item replace entity @a[team=wallstreet] hotbar.0 with stick{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:stick"}}] run title @s actionbar [{"score":{"name":"@s","objective":"wallstreet.wood_quantity"},"color":"yellow","bold":true,"italic":true},{"text":" items bought at ","color":"gray","bold":false,"italic":false},{"score":{"name":"@s","objective":"wallstreet.wood_price"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false},{"text":"/item","color":"gray","bold":false,"italic":false}]

item replace entity @a[team=wallstreet] hotbar.1 with clay_ball{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:clay_ball"}}] run title @s actionbar [{"score":{"name":"@s","objective":"wallstreet.stone_quantity"},"color":"yellow","bold":true,"italic":true},{"text":" items bought at ","color":"gray","bold":false,"italic":false},{"score":{"name":"@s","objective":"wallstreet.stone_price"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false},{"text":"/item","color":"gray","bold":false,"italic":false}]

item replace entity @a[team=wallstreet] hotbar.2 with leather{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:leather"}}] run title @s actionbar [{"score":{"name":"@s","objective":"wallstreet.leather_quantity"},"color":"yellow","bold":true,"italic":true},{"text":" items bought at ","color":"gray","bold":false,"italic":false},{"score":{"name":"@s","objective":"wallstreet.leather_price"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false},{"text":"/item","color":"gray","bold":false,"italic":false}]

item replace entity @a[team=wallstreet] hotbar.3 with iron_ingot{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:iron_ingot"}}] run title @s actionbar [{"score":{"name":"@s","objective":"wallstreet.iron_quantity"},"color":"yellow","bold":true,"italic":true},{"text":" items bought at ","color":"gray","bold":false,"italic":false},{"score":{"name":"@s","objective":"wallstreet.iron_price"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false},{"text":"/item","color":"gray","bold":false,"italic":false}]

item replace entity @a[team=wallstreet] hotbar.4 with diamond{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:diamond"}}] run title @s actionbar [{"score":{"name":"@s","objective":"wallstreet.diamond_quantity"},"color":"yellow","bold":true,"italic":true},{"text":" items bought at ","color":"gray","bold":false,"italic":false},{"score":{"name":"@s","objective":"wallstreet.diamond_price"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false},{"text":"/item","color":"gray","bold":false,"italic":false}]

execute as @a[team=wallstreet] run item replace entity @s hotbar.6 with emerald{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:emerald"}}] run title @s actionbar [{"text":"You have ","color":"gray","bold":false,"italic":false},{"score":{"name":"@s","objective":"wallstreet.budget"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false}]

function wallstreet:inventory/compass/
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:compass"}}] run function wallstreet:inventory/compass/apply_name

item replace entity @a[team=wallstreet] hotbar.8 with book{display:{Name:'{"text":" "}'}}
execute as @a[team=wallstreet,nbt={SelectedItem:{"id":"minecraft:book"}}] run title @s actionbar [{"text":"Market news","color":"gray","bold":false,"italic":false}]