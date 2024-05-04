# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 20/10/2023 (1.20.2)
# Last modification: 27/02/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#canonical-to-local
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# sincos(h: Phi) & sincos(v: Theta)
execute as B5-0-0-0-1 run function bs.position:convert/canonical_to_local/sincos

# X' = Z * sin(h) + X * cos(h)
scoreboard players operation #position.canonical_to_local.x bs.data = @s bs.pos.z
scoreboard players operation #position.canonical_to_local.x bs.data *= #position.canonical_to_local.sin.h bs.data
scoreboard players operation #position.canonical_to_local bs.data = @s bs.pos.x
scoreboard players operation #position.canonical_to_local bs.data *= #position.canonical_to_local.cos.h bs.data
scoreboard players operation #position.canonical_to_local.x bs.data += #position.canonical_to_local bs.data
scoreboard players operation #position.canonical_to_local.x bs.data /= 1000 bs.const

# Y' = (z * cos(h) - x * sin(h)) * sin(v) + y * cos(v)
scoreboard players operation #position.canonical_to_local.y bs.data = @s bs.pos.z
scoreboard players operation #position.canonical_to_local.y bs.data *= #position.canonical_to_local.cos.h bs.data
scoreboard players operation #position.canonical_to_local bs.data = @s bs.pos.x
scoreboard players operation #position.canonical_to_local bs.data *= #position.canonical_to_local.sin.h bs.data
scoreboard players operation #position.canonical_to_local.y bs.data -= #position.canonical_to_local bs.data
execute store result score #position.canonical_to_local.z bs.data run scoreboard players operation #position.canonical_to_local.y bs.data /= 1000 bs.const
scoreboard players operation #position.canonical_to_local.y bs.data *= #position.canonical_to_local.sin.v bs.data
scoreboard players operation #position.canonical_to_local bs.data = @s bs.pos.y
scoreboard players operation #position.canonical_to_local bs.data *= #position.canonical_to_local.cos.v bs.data
scoreboard players operation #position.canonical_to_local.y bs.data += #position.canonical_to_local bs.data
scoreboard players operation #position.canonical_to_local.y bs.data /= 1000 bs.const

# Z' = (z * cos(h) - x * sin(h)) * cos(v) - y * sin(v)
scoreboard players operation #position.canonical_to_local.z bs.data *= #position.canonical_to_local.cos.v bs.data
scoreboard players operation #position.canonical_to_local bs.data = @s bs.pos.y
scoreboard players operation #position.canonical_to_local bs.data *= #position.canonical_to_local.sin.v bs.data
scoreboard players operation #position.canonical_to_local.z bs.data -= #position.canonical_to_local bs.data
scoreboard players operation #position.canonical_to_local.z bs.data /= 1000 bs.const

scoreboard players operation @s bs.pos.x = #position.canonical_to_local.x bs.data
scoreboard players operation @s bs.pos.y = #position.canonical_to_local.y bs.data
scoreboard players operation @s bs.pos.z = #position.canonical_to_local.z bs.data
