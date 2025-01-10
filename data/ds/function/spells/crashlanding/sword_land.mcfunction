particle explosion ~ ~ ~ 1 0 1 0 5
playsound item.trident.hit_ground master @a ~ ~ ~ 3 0.5
particle ash ~ ~ ~ 1 1 1 0.1 50

# Ascension 5: Bloody Recharge
execute if entity @s[tag=ascension_5_sword] as @e[type=!#ds:immune,distance=..3] unless predicate ds:invincible run function ds:spells/crashlanding/decrease_cooldown

execute as @e[type=!#ds:immune,distance=..3] unless predicate ds:invincible run damage @s 10 falling_stalactite

# Ascension 3: Paralyze
execute if entity @s[tag=higher_dmg] as @e[type=!#ds:immune,distance=..3] unless predicate ds:invincible run effect give @s darkness infinite 0
