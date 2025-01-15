# Normal Attack - Harvest

# Set score if needed
execute unless score @s ds-farmersdelight-normal matches 0.. run scoreboard players set @s ds-farmersdelight-normal 0

scoreboard players operation @s ds-reg1 = @s ds-farmersdelight-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

playsound block.grass.break master @a ~ ~ ~
function ds:spells/farmersdelight/harvest_circle

execute as @e[distance=..3,tag=!farmersdelight_caster,type=!#ds:immune] run damage @s 3 player_attack by @a[tag=farmersdelight_caster,limit=1,distance=..3]

function ds:spells/farmersdelight/break_crop

# Ascension 3: Magnetism
execute if score @s ds-ascension matches 3.. as @e[type=item,distance=..5] run tp @s @a[tag=farmersdelight_caster,limit=1]

scoreboard players operation @s ds-farmersdelight-normal = #ds-tick ds-var
# 2 second cooldown
scoreboard players add @s ds-farmersdelight-normal 40

# Ascension 1: Faster Harvest
execute if score @s ds-ascension matches 1.. run scoreboard players remove @s ds-farmersdelight-normal 20