scoreboard players set #ds-temp ds-var 0

execute as @e[type=slime,distance=..10] if predicate ds:big_slime run scoreboard players set #ds-temp ds-var 1

execute unless score #ds-temp ds-var matches 1.. run return 0

execute as @e[type=cow,distance=..10] if predicate ds:baby run scoreboard players set #ds-temp ds-var 2

execute if score #ds-temp ds-var matches 2.. run advancement grant @s only ds:adv/easy/slimecow