# Executed as & at villager marker

# Wood
scoreboard players operation #mean tmp = #wallstreet.model.wood_global_stock data
scoreboard players operation #mean tmp /= #wallstreet.villager_count data
scoreboard players operation #std tmp = #mean tmp
scoreboard players operation #std tmp /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.wood_max_quantity = #x tmp
scoreboard players operation @s wallstreet.wood_max_quantity *= 2 const
scoreboard players operation @s wallstreet.wood_max_quantity > 2 const
function #lib:random_normal
scoreboard players operation @s wallstreet.wood_quantity = #x tmp
scoreboard players operation @s wallstreet.wood_quantity < @s wallstreet.wood_max_quantity

# Stone
scoreboard players operation #mean tmp = #wallstreet.model.stone_global_stock data
scoreboard players operation #mean tmp /= #wallstreet.villager_count data
scoreboard players operation #std tmp = #mean tmp
scoreboard players operation #std tmp /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.stone_max_quantity = #x tmp
scoreboard players operation @s wallstreet.stone_max_quantity *= 2 const
scoreboard players operation @s wallstreet.stone_max_quantity > 2 const
function #lib:random_normal
scoreboard players operation @s wallstreet.stone_quantity = #x tmp
scoreboard players operation @s wallstreet.stone_quantity < @s wallstreet.stone_max_quantity
# Leather
scoreboard players operation #mean tmp = #wallstreet.model.leather_global_stock data
scoreboard players operation #mean tmp /= #wallstreet.villager_count data
scoreboard players operation #std tmp = #mean tmp
scoreboard players operation #std tmp /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.leather_max_quantity = #x tmp
scoreboard players operation @s wallstreet.leather_max_quantity *= 2 const
scoreboard players operation @s wallstreet.leather_max_quantity > 2 const
function #lib:random_normal
scoreboard players operation @s wallstreet.leather_quantity = #x tmp
scoreboard players operation @s wallstreet.leather_quantity < @s wallstreet.leather_max_quantity

# Iron
scoreboard players operation #mean tmp = #wallstreet.model.iron_global_stock data
scoreboard players operation #mean tmp /= #wallstreet.villager_count data
scoreboard players operation #std tmp = #mean tmp
scoreboard players operation #std tmp /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.iron_max_quantity = #x tmp
scoreboard players operation @s wallstreet.iron_max_quantity *= 2 const
scoreboard players operation @s wallstreet.iron_max_quantity > 2 const
function #lib:random_normal
scoreboard players operation @s wallstreet.iron_quantity = #x tmp
scoreboard players operation @s wallstreet.iron_quantity < @s wallstreet.iron_max_quantity

# Diamond
scoreboard players operation #mean tmp = #wallstreet.model.diamond_global_stock data
scoreboard players operation #mean tmp /= #wallstreet.villager_count data
scoreboard players operation #std tmp = #mean tmp
scoreboard players operation #std tmp /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.diamond_max_quantity = #x tmp
scoreboard players operation @s wallstreet.diamond_max_quantity *= 2 const
scoreboard players operation @s wallstreet.diamond_max_quantity > 2 const
function #lib:random_normal
scoreboard players operation @s wallstreet.diamond_quantity = #x tmp
scoreboard players operation @s wallstreet.diamond_quantity < @s wallstreet.diamond_max_quantity

function wallstreet:villager/refresh_price/all