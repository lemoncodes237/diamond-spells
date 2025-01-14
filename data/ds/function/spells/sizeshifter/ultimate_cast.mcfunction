# Ultimate - Shrink

# Set score if needed
execute unless score @s ds-sizeshifter-ultimate matches 0.. run scoreboard players set @s ds-sizeshifter-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-sizeshifter-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

attribute @s scale modifier add ds:shrink -0.75 add_multiplied_total

scoreboard players operation @s ds-sizeshifter-shrink = #ds-tick ds-var

# Yes, this is inefficient. It's four commands leave me alone I'm too lazy to make two more functions
# Ascension 3: Stronger Shrink
execute if score @s ds-ascension matches ..2 run scoreboard players add @s ds-sizeshifter-shrink 200
execute if score @s ds-ascension matches ..2 run effect give @s speed 10 1
execute if score @s ds-ascension matches 3.. run scoreboard players add @s ds-sizeshifter-shrink 300
execute if score @s ds-ascension matches 3.. run effect give @s speed 15 1

# Ascension 4: Small but Deadly
execute if score @s ds-ascension matches 4.. run effect give @s strength 15

execute if score @s ds-ascension matches 5.. run tag @s add sizeshifter_ascension_5

tag @s add sizeshifter_ultimate
playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.3

scoreboard players operation @s ds-sizeshifter-ultimate = #ds-tick ds-var
# 1 minute cooldown
scoreboard players add @s ds-sizeshifter-ultimate 1200