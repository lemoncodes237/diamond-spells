execute unless score @s ds-reset matches 0.. run return run scoreboard players set @s ds-reset 0

execute if score @s ds-reset >= #ds-tick ds-reset run return 0

scoreboard players add @s ds-reset 1
function ds:reset_cooldowns