scoreboard players operation #x tmp = #mean tmp
scoreboard players operation #delta tmp = #std tmp
scoreboard players operation #delta tmp *= 2 const
scoreboard players set #loop tmp 0

scoreboard players set #x tmp 0

execute store result score #guess tmp run random value -500..500
scoreboard players operation #x tmp += #guess tmp
execute store result score #guess tmp run random value -500..500
scoreboard players operation #x tmp += #guess tmp
execute store result score #guess tmp run random value -500..500
scoreboard players operation #x tmp += #guess tmp
execute store result score #guess tmp run random value -500..500
scoreboard players operation #x tmp += #guess tmp
execute store result score #guess tmp run random value -500..500
scoreboard players operation #x tmp += #guess tmp
execute store result score #guess tmp run random value -500..500
scoreboard players operation #x tmp += #guess tmp
execute store result score #guess tmp run random value -500..500
scoreboard players operation #x tmp += #guess tmp
execute store result score #guess tmp run random value -500..500
scoreboard players operation #x tmp += #guess tmp
execute store result score #guess tmp run random value -500..500
scoreboard players operation #x tmp += #guess tmp
execute store result score #guess tmp run random value -500..500
scoreboard players operation #x tmp += #guess tmp

scoreboard players operation #x tmp *= #std tmp
scoreboard players operation #x tmp /= 1000 const
scoreboard players operation #x tmp += #mean tmp
