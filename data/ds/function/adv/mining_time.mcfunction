execute store result score @s ds-reg1 run clear @s iron_pickaxe 0
execute unless score @s ds-reg1 matches 1.. run return 0
execute store result score @s ds-reg1 run clear @s torch 0
execute unless score @s ds-reg1 matches 64.. run return 0
execute store result score @s ds-reg3 run data get entity @s Pos[1]
execute unless score @s ds-reg3 matches ..-51 run return 0

advancement grant @s only ds:adv/easy/mining