particle dust{color:[1,0,0],scale:1} ^ ^ ^ 0 0 0 0 1

scoreboard players add @s ds-var 1

# Ascension 0-3 damage
execute if score @s ds-ascension matches 0..3 as @e[distance=..1.5,tag=!jumper_caster,type=!#ds:immune] run damage @s 5 player_attack by @a[tag=jumper_caster,limit=1,sort=nearest]
# Ascension 4: Stronger Beam
execute if score @s ds-ascension matches 4.. as @e[distance=..1.5,tag=!jumper_caster,type=!#ds:immune] run damage @s 7 player_attack by @a[tag=jumper_caster,limit=1,sort=nearest]

execute unless block ~ ~ ~ #ds:no_block run return 0

# Ascension 0-1 reach
execute if score @s ds-ascension matches 0..1 if score @s ds-var matches 1..10 positioned ^ ^ ^1 run return run function ds:spells/jumper/red_beam
# Ascension 2: Longer Beam
execute if score @s ds-ascension matches 2.. if score @s ds-var matches 1..15 positioned ^ ^ ^1 run return run function ds:spells/jumper/red_beam
