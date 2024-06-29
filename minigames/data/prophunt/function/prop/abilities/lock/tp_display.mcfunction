tp @s[y_rotation=-45..45] ~.5 ~ ~.5 0 0
tp @s[y_rotation=45..135] ~.5 ~ ~.5 90 0
tp @s[y_rotation=135..225] ~.5 ~ ~.5 180 0
tp @s[y_rotation=225..315] ~.5 ~ ~.5 270 0

execute at @s unless block ~ ~ ~ #prophunt:can_walk_through run tp @s ~ ~1 ~
