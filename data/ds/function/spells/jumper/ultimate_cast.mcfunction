# Ultimate - High Jump

# Set score if needed
execute unless score @s ds-jumper-ultimate matches 0.. run scoreboard players set @s ds-jumper-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-jumper-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

particle explosion ~ ~ ~ 1 1 1 0 5
playsound entity.generic.explode master @a ~ ~ ~

# Ascension 0-4 damage
execute if score @s ds-ascension matches 0..4 as @e[distance=..5,tag=!jumper_caster,type=!#ds:immune] run damage @s 10 player_attack by @a[tag=jumper_caster,limit=1,sort=nearest]
# Ascension 5: Stronger Jump
execute if score @s ds-ascension matches 5.. as @e[distance=..5,tag=!jumper_caster,type=!#ds:immune] run damage @s 12 player_attack by @a[tag=jumper_caster,limit=1,sort=nearest]


effect give @s levitation 1 43 true
effect give @s slow_falling 10

# Ascension 1: Healing Jump
execute if score @s ds-ascension matches 1.. run effect give @s regeneration 10 0

# Ascension 3: Blinding Jump
execute if score @s ds-ascension matches 3.. run effect give @e[distance=..5,tag=!jumper_caster,type=!#ds:immune] blindness 10 1

scoreboard players operation @s ds-jumper-ultimate = #ds-tick ds-var
# 20 second cooldown
scoreboard players add @s ds-jumper-ultimate 400