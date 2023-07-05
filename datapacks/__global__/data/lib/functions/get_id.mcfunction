#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: entity/id/getsuid
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#id
# Parallelizable: true
# Note: Gives a unique identifier to the source entity
# - To reset SUID, set the entity score "SUID" at 0 and make it execute this function.

#__________________________________________________
# PARAMETERS

# Output: SUID (score): Simple Unique ID

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if entity @s[scores={id=0}] run scoreboard players add ID_COUNT data 1
execute if entity @s[scores={id=0}] run scoreboard players operation @s id = ID_COUNT data
