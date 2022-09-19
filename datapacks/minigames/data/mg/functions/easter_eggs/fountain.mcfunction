# Teleport in and out of the water cave (x=5, z=118)
# In : (x=-32, z=144)
execute at @e[type=area_effect_cloud,tag=fontaine] as @a[distance=..3] run tp 5 85 127

# Out :
execute at @e[type=area_effect_cloud,tag=exit1] as @a[distance=..3] run tp 140 79 115
execute at @e[type=area_effect_cloud,tag=exit2] as @a[distance=..3] run tp -240 95 57
