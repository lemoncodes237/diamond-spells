function ds:adv/mining_time
function ds:adv/stick_with_me
execute if score @s ds-spawner-broken matches 1.. run advancement grant @s only ds:adv/easy/spawner
execute if predicate ds:invisible run advancement grant @s only ds:adv/intermediate/invisible