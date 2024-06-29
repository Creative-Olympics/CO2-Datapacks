# Executed as & at villager marker

# Wood
scoreboard players operation #mean input = #wallstreet.model.wood.ideal_stock data
scoreboard players operation #std input = #mean input
scoreboard players operation #std input /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.wood_max_stock = #x output
scoreboard players operation @s wallstreet.wood_max_stock *= 2 const
scoreboard players operation @s wallstreet.wood_max_stock > 2 const
function #lib:random_normal
scoreboard players operation @s wallstreet.wood_current_stock = #x output
scoreboard players operation @s wallstreet.wood_current_stock < @s wallstreet.wood_max_stock

# Stone
scoreboard players operation #mean input = #wallstreet.model.stone.ideal_stock data
scoreboard players operation #std input = #mean input
scoreboard players operation #std input /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.stone_max_stock = #x output
scoreboard players operation @s wallstreet.stone_max_stock *= 2 const
scoreboard players operation @s wallstreet.stone_max_stock > 2 const
function #lib:random_normal
scoreboard players operation @s wallstreet.stone_current_stock = #x output
scoreboard players operation @s wallstreet.stone_current_stock < @s wallstreet.stone_max_stock
# Leather
scoreboard players operation #mean input = #wallstreet.model.leather.ideal_stock data
scoreboard players operation #std input = #mean input
scoreboard players operation #std input /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.leather_max_stock = #x output
scoreboard players operation @s wallstreet.leather_max_stock *= 2 const
scoreboard players operation @s wallstreet.leather_max_stock > 2 const
function #lib:random_normal
scoreboard players operation @s wallstreet.leather_current_stock = #x output
scoreboard players operation @s wallstreet.leather_current_stock < @s wallstreet.leather_max_stock

# Iron
scoreboard players operation #mean input = #wallstreet.model.iron.ideal_stock data
scoreboard players operation #std input = #mean input
scoreboard players operation #std input /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.iron_max_stock = #x output
scoreboard players operation @s wallstreet.iron_max_stock *= 2 const
scoreboard players operation @s wallstreet.iron_max_stock > 2 const
function #lib:random_normal
scoreboard players operation @s wallstreet.iron_current_stock = #x output
scoreboard players operation @s wallstreet.iron_current_stock < @s wallstreet.iron_max_stock

# Diamond
scoreboard players operation #mean input = #wallstreet.model.diamond.ideal_stock data
scoreboard players operation #std input = #mean input
scoreboard players operation #std input /= 10 const
function #lib:random_normal
scoreboard players operation @s wallstreet.diamond_max_stock = #x output
scoreboard players operation @s wallstreet.diamond_max_stock *= 2 const
scoreboard players operation @s wallstreet.diamond_max_stock > 2 const
function #lib:random_normal
scoreboard players operation @s wallstreet.diamond_current_stock = #x output
scoreboard players operation @s wallstreet.diamond_current_stock < @s wallstreet.diamond_max_stock

function wallstreet:villager/refresh_price/all