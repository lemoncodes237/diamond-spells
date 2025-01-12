scoreboard players add @s ds-var 1

execute store result entity @s transformation.scale[0] float 0.001 run data get entity @s transformation.scale[0] 1035.0
execute store result entity @s transformation.scale[1] float 0.001 run data get entity @s transformation.scale[1] 1035.0
execute store result entity @s transformation.scale[2] float 0.001 run data get entity @s transformation.scale[2] 1035.0
execute store result entity @s transformation.translation[0] float 0.001 run data get entity @s transformation.translation[0] 1035.0
execute store result entity @s transformation.translation[1] float 0.001 run data get entity @s transformation.translation[1] 1035.0
execute store result entity @s transformation.translation[2] float 0.001 run data get entity @s transformation.translation[2] 1035.0

execute if score @s ds-var matches 20.. run function ds:spells/sizeshifter/explode_orb

execute if score @s ds-var matches 10.. run data merge entity @s {block_state:{Name:"redstone_block"}}