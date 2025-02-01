# Ultimate - Hidden Methods

# Set score if needed
execute unless score @s ds-sautrie-ultimate matches 0.. run scoreboard players set @s ds-sautrie-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-sautrie-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

function ds:spells/sautrie/shockwave
execute as @e[type=!#ds:immune,distance=..10,tag=!sautrie_caster] run damage @s 8 player_attack by @a[tag=sautrie_caster,limit=1]

playsound block.anvil.place master @a ~ ~ ~ 1 0.2

scoreboard players operation @s ds-sautrie-hiddenmethods = #ds-tick ds-var
scoreboard players add @s ds-sautrie-hiddenmethods 300
scoreboard players set @s ds-sautrie-hiddencounter 0

# Ascension 1: Chasedown
execute if score @s ds-ascension matches 1.. run effect give @s speed 15 1

# Ascension 3: Recovery
execute if score @s ds-ascension matches 3.. run effect give @s instant_health 1 0 true

# Ascension 5: Slowing Methods
execute if score @s ds-ascension matches 5.. run effect give @e[type=!#ds:immune,distance=..10,tag=!sautrie_caster] slowness 5 1

scoreboard players operation @s ds-sautrie-ultimate = #ds-tick ds-var
# 1 minute 30 second cooldown
scoreboard players add @s ds-sautrie-ultimate 1800