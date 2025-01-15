execute unless score @s ds-malison-curse matches 9.. run damage @s 1 ds:no_cooldown
execute unless score #ds-temp ds-reg1 matches 1.. run damage @s 1 ds:no_cooldown
execute if score @s ds-malison-curse matches 9.. if score #ds-temp ds-reg1 matches 1.. run damage @s 2 ds:no_cooldown

execute at @s run particle enchant ~ ~1 ~ 0.5 1 0.5 0.1 20