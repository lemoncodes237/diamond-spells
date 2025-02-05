# Current version
scoreboard players set #ds-global ds-version 1

execute unless score @s ds-version matches -2147483648..2147483647 run return run scoreboard players operation @s ds-version = #ds-global ds-version

execute if score @s ds-version < #ds-global ds-version run function ds:update

scoreboard players operation @s ds-version = #ds-global ds-version