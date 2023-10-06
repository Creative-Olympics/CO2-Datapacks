# Executed as & at villager marker

# Wood
scoreboard players operation #mean tmp = #wallstreet.model.wood_global_stock data
scoreboard players operation #mean tmp /= #wallstreet.villager_count data
scoreboard players operation #std tmp = #mean tmp
scoreboard players operation #std tmp /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.wood_quantity = #x tmp

# Stone
scoreboard players operation #mean tmp = #wallstreet.model.stone_global_stock data
scoreboard players operation #mean tmp /= #wallstreet.villager_count data
scoreboard players operation #std tmp = #mean tmp
scoreboard players operation #std tmp /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.stone_quantity = #x tmp

# Leather
scoreboard players operation #mean tmp = #wallstreet.model.leather_global_stock data
scoreboard players operation #mean tmp /= #wallstreet.villager_count data
scoreboard players operation #std tmp = #mean tmp
scoreboard players operation #std tmp /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.leather_quantity = #x tmp

# Iron
scoreboard players operation #mean tmp = #wallstreet.model.iron_global_stock data
scoreboard players operation #mean tmp /= #wallstreet.villager_count data
scoreboard players operation #std tmp = #mean tmp
scoreboard players operation #std tmp /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.iron_quantity = #x tmp

# Diamond
scoreboard players operation #mean tmp = #wallstreet.model.diamond_global_stock data
scoreboard players operation #mean tmp /= #wallstreet.villager_count data
scoreboard players operation #std tmp = #mean tmp
scoreboard players operation #std tmp /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.diamond_quantity = #x tmp

function wallstreet:villager/refresh_price/all