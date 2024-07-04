advancement revoke @s only prophunt:prop_hurt_as_prop

execute on attacker run tag @s add prophunt.is_attacker
function prophunt:hunter/find_prop/on_victim
execute on attacker run tag @s remove prophunt.is_attacker
