scoreboard players add @s ds-var 1
execute if score @s ds-var matches 60.. run function ds:spells/crashlanding/delete_sword
execute if score @s ds-var matches 1 run function ds:spells/crashlanding/sword_land