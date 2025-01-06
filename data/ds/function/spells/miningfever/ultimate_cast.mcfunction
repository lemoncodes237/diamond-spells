# Ultimate - Gold Rush

# Set score if needed
execute unless score @s ds-mining-fever-ultimate matches 0.. run scoreboard players set @s ds-mining-fever-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-mining-fever-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

particle block_crumble{block_state:{Name:"stone"}} ~ ~ ~ 0.5 0.5 0.5 0 30
playsound entity.elder_guardian.curse master @a ~ ~ ~
execute if score @s ds-ascension matches 0..1 run effect give @s haste 20 1
# Ascension 2: Diamond Rush
execute if score @s ds-ascension matches 2.. run effect give @s haste 20 7

effect give @s speed 20 0

# Ascension 4: Quick Start
execute if score @s ds-ascension matches 4.. run fill ~-3 ~ ~-3 ~3 ~3 ~3 air replace #ds:stones

# Ascension 5: Burning Bright
execute if score @s ds-ascension matches 5.. run give @s torch 16

scoreboard players operation @s ds-mining-fever-ultimate = #ds-tick ds-var
# 1 minute cooldown
scoreboard players add @s ds-mining-fever-ultimate 1200