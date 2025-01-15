scoreboard players add @s ds-malison-curse 3

# Ascension 5: Stronger Curse
execute if score #ds-temp ds-reg2 matches 1.. run scoreboard players add @s ds-malison-curse 1

damage @s 1 player_attack by @a[tag=malison_caster,distance=..10,limit=1]
particle enchant ~ ~1 ~ 0.2 1 0.2 0 30
tag @s add ds_cursed

# Max Curse is 20
execute if score @s ds-malison-curse matches 21.. run scoreboard players set @s ds-malison-curse 20