scoreboard players add @s ds-var 1

particle enchant ~ ~ ~ 0.25 0.25 0.25 0 2

execute unless score @s ds-var matches 40.. run return run tp @s ~ ~0.025 ~ ~9 ~

scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-id run function ds:gacha/get_reward
kill @s