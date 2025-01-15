# Ultimate - Eradication of Benevolence

# Set score if needed
execute unless score @s ds-malison-ultimate matches 0.. run scoreboard players set @s ds-malison-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-malison-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

# No entity to use ultimate on
execute positioned ^ ^ ^3 unless entity @e[type=#ds:enemies,tag=!malison_caster,distance=..30] run return run title @s actionbar "There is no enemy to use Eradication of Benevolence on nearby!"

# Find the entity to use meteor on
execute positioned ^ ^ ^3 as @e[type=#ds:enemies,tag=!malison_caster,sort=nearest,limit=1,distance=..30] at @s run summon marker ~ ~ ~ {Tags:["eradication_of_benevolence","temp_erad"]}

playsound item.trident.thunder master @a ~ ~ ~ 1 2

# Give the ID
execute positioned ^ ^ ^3 run scoreboard players operation @e[type=marker,tag=temp_erad,distance=..50,limit=1] ds-id = @s ds-id

# Get how much damage the final wave should do
scoreboard players set @e[type=marker,tag=temp_erad,distance=..50,limit=1] ds-malison-curse 0
scoreboard players set @e[type=marker,tag=temp_erad,distance=..50,limit=1] ds-var -5
execute as @e[type=marker,tag=temp_erad,distance=..50,limit=1] at @s positioned ~ ~3 ~ as @e[distance=..12.3,type=!#ds:immune,tag=!malison_caster] if score @s ds-malison-curse matches 1.. run scoreboard players operation @e[type=marker,tag=temp_erad,distance=..5,limit=1] ds-malison-curse += @s ds-malison-curse

# Check if over 100 for advancement
execute if score @e[type=marker,tag=temp_erad,distance=..5,limit=1] ds-malison-curse matches 100.. run advancement grant @s only ds:adv/hard/malison

# Ascension 1: Eradicate the Cursed
execute if score @s ds-ascension matches 1.. run tag @e[type=marker,tag=temp_erad,distance=..50,limit=1] add ascension_1_erad
# Ascension 2: Base Strike
execute if score @s ds-ascension matches 2.. run tag @e[type=marker,tag=temp_erad,distance=..50,limit=1] add ascension_2_erad
# Ascension 3: Shielded from Destruction
execute if score @s ds-ascension matches 3.. run effect give @s absorption 10 1

tag @e[type=marker,tag=temp_erad,distance=..50,limit=1] remove temp_erad

scoreboard players operation @s ds-malison-ultimate = #ds-tick ds-var
# 40 second cooldown
scoreboard players add @s ds-malison-ultimate 800

# Ascension 4: Extinction
execute if score @s ds-ascension matches 4.. run scoreboard players remove @s ds-malison-ultimate 200