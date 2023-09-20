# Executed globally
# tellraw @a {"text":"environment:fountain"}

# Teleport in and out of the water cave (x=5, z=118)
# In: (x=-32, z=144)
execute at @e[type=area_effect_cloud,tag=fontaine] run tp @a[distance=..3] 5 85 127

# Out:
execute at @e[type=area_effect_cloud,tag=exit1] run tp @a[distance=..3] 140 79 115
execute at @e[type=area_effect_cloud,tag=exit2] run tp @a[distance=..3] -240 95 57
