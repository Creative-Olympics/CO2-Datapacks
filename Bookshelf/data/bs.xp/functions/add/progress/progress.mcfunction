# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Leirof, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.18.2)
# Last modification: 28/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#add-remove
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute unless score #xp.use_macro bs.data matches 1 unless score #xp.add_progress.check bs.data = $xp.add_progress.progress bs.in store result storage bs:in xp.add_progress.progress int 1 run scoreboard players operation #xp.add_progress.check bs.data = $xp.add_progress.progress bs.in
execute unless score #xp.use_macro bs.data matches 1 run function bs.xp:add/progress/macro with storage bs:in xp.add_progress
scoreboard players reset #xp.use_macro bs.data
