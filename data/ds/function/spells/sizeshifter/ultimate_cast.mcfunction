# Ultimate - Shrink

# Set score if needed
execute unless score @s ds-sizeshifter-ultimate matches 0.. run scoreboard players set @s ds-sizeshifter-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-sizeshifter-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

# If we are in ultimate state, do not cast the ultimate
execute if predicate ds:in_ultimate run return run function ds:lib/in_ultimate

attribute @s scale modifier add ds:shrink -0.75 add_multiplied_total

# Yes, this is inefficient. It's four commands leave me alone I'm too lazy to make two more functions
# Ascension 3: Stronger Shrink
execute if score @s ds-ascension matches ..2 run effect give @s luck 10 26 true
execute if score @s ds-ascension matches ..2 run effect give @s speed 10 1
execute if score @s ds-ascension matches 3.. run effect give @s luck 15 26 true
execute if score @s ds-ascension matches 3.. run effect give @s speed 15 1

# Ascension 4: Small but Deadly
execute if score @s ds-ascension matches 4.. run effect give @s strength 15

execute if score @s ds-ascension matches 5.. run tag @s add sizeshifter_ascension_5

tag @s add sizeshifter_ultimate
playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.3

scoreboard players operation @s ds-sizeshifter-ultimate = #ds-tick ds-var
# 1 minute cooldown
scoreboard players add @s ds-sizeshifter-ultimate 1200