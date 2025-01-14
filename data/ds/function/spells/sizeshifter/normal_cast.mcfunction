# Normal Attack - Grow

# Set score if needed
execute unless score @s ds-sizeshifter-normal matches 0.. run scoreboard players set @s ds-sizeshifter-normal 0

scoreboard players operation @s ds-reg1 = @s ds-sizeshifter-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

scoreboard players set @s ds-var 0
execute if score @s ds-ascension matches ..1 anchored eyes positioned ^ ^ ^5 run summon block_display ~ ~ ~ {Tags:["growth_orb"],block_state:{Name:"diamond_block"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[-0.25,-0.25,-0.25]}}
execute if score @s ds-ascension matches 2.. anchored eyes positioned ^ ^ ^5 run summon block_display ~ ~ ~ {Tags:["growth_orb","ascension_2"],block_state:{Name:"diamond_block"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[-0.25,-0.25,-0.25]}}

# Generate a Grow ID
scoreboard players add #ds-global ds-sizeshifter-grow-id 1
scoreboard players operation @s ds-sizeshifter-grow-id = #ds-global ds-sizeshifter-grow-id
execute anchored eyes positioned ^ ^ ^5 run scoreboard players operation @e[type=block_display,distance=..1,tag=growth_orb,sort=nearest,limit=1] ds-sizeshifter-grow-id = @s ds-sizeshifter-grow-id

playsound block.enchantment_table.use master @a ~ ~ ~

scoreboard players operation @s ds-sizeshifter-normal = #ds-tick ds-var
# 3 second cooldown
scoreboard players add @s ds-sizeshifter-normal 60

# Ascension 1: Mismatch
execute if score @s ds-ascension matches 1.. if predicate ds:shrink run scoreboard players remove @s ds-sizeshifter-normal 40