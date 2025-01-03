# Increase cooldown until landing
scoreboard players add @s ds-calamity-normal 1

# Damage them
tag @s add calamity_attacker
execute positioned ~ ~-2 ~ as @e[distance=..2.5,tag=!calamity_attacker] run damage @s 9 player_attack by @a[tag=calamity_attacker,sort=nearest,limit=1]
tag @s remove calamity_attacker