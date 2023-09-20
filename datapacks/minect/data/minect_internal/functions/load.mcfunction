scoreboard objectives add minect_version dummy
execute unless score version minect_version matches 1.. run function minect_internal:install

# TODO: Instead of using function tags we could patch this function. That way there is a bit less clutter that is alphabetically before the functions in the minect namespace.
scoreboard players set connect_prompt minect_global 1
function #minect_internal:connect/prompt
