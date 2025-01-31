scoreboard players set @s ds-autumnwind-swoop 0
damage @s 5 player_attack by @a[limit=1,tag=autumnwind_caster]

# Ascension 5: Rare Winds
execute if score #ds-temp ds-ascension matches 5.. run function ds:spells/autumnwind/rare_winds

# This tag is kept for 7s.
tag @s add ds_autumnwind_swoop

# Ascension 2: Slowing Swoop
execute if score #ds-temp ds-ascension matches 2.. run effect give @s slowness 5 1

scoreboard players set @s ds-autumnwind-invincibility 0