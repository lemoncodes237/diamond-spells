# Ultimate - Nuclear

# Set score if needed
execute unless score @s ds-hydrogen-ultimate matches 0.. run scoreboard players set @s ds-hydrogen-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-hydrogen-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

particle block_crumble{block_state:{Name:"tnt"}} ~ ~1 ~ 0.5 0.75 0.5 0 30
playsound block.anvil.break master @a ~ ~ ~
tag @s add ds_nuclear
scoreboard players set @s ds-hydrogen-nuclear 0

# Ascension 1: Boom Boom
execute if score @s ds-ascension matches 1.. run tag @s add ds_nuclear_ascension_1

# Ascension 3: Gotta Go Fast
execute if score @s ds-ascension matches 3.. run effect give @s speed 10 1

# Ascension 4: Big Injury
execute if score @s ds-ascension matches 4.. run tag @s add ds_nuclear_ascension_4

scoreboard players operation @s ds-hydrogen-ultimate = #ds-tick ds-var
# 1 minute cooldown
scoreboard players add @s ds-hydrogen-ultimate 1200