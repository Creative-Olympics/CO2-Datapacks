# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------

# piglin_wall_head group
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=west] run data modify storage bs:out hitbox.shape set value [[8, 4, 3, 16, 12, 1]]
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=east] run data modify storage bs:out hitbox.shape set value [[0, 4, 3, 8, 12, 13]]
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=north] run data modify storage bs:out hitbox.shape set value [[3, 4, 8, 13, 12, 16]]
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=south] run data modify storage bs:out hitbox.shape set value [[3, 4, 0, 13, 12, 8]]
