# Ultimate - Architect

# Set score if needed
execute unless score @s ds-soren-ultimate matches 0.. run scoreboard players set @s ds-soren-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-soren-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

playsound block.anvil.use master @a ~ ~ ~
particle block_crumble{block_state:{Name:"cobblestone"}} ~ ~1 ~ 0.5 0.7 0.5 0 30

execute if score @s ds-ascension matches 0 run attribute @s block_interaction_range modifier add ds:architect 2 add_multiplied_total

# Ascension 1: Builder
execute if score @s ds-ascension matches 1.. run attribute @s block_interaction_range modifier add ds:architect 3 add_multiplied_total

scoreboard players operation @s ds-soren-architect = #ds-tick ds-var
scoreboard players add @s ds-soren-architect 600

# Ascension 3: Climb
execute if score @s ds-ascension matches 3.. run effect give @s jump_boost 30 4

tag @s add ds_architect

scoreboard players operation @s ds-soren-ultimate = #ds-tick ds-var
# 1 minute cooldown
scoreboard players add @s ds-soren-ultimate 1200

# Ascension 5: More Building
execute if score @s ds-ascension matches 5.. run scoreboard players remove @s ds-soren-ultimate 240