scoreboard players add @s ds-var 1
scoreboard players add @s ds-reg1 1

execute if score @s ds-var matches 240.. run return run function ds:spells/singularity/end_ultimate

# Find the person who created the black hole
scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-id run tag @s add ds_blackhole_creator

execute store result storage ds:black_hole rot1 int 1 run random value 1..3
execute store result storage ds:black_hole rot2 int 1 run random value -3..3

function ds:spells/singularity/rotate with storage ds:black_hole
function ds:spells/singularity/black_hole_circle
execute facing ^ ^1 ^ run function ds:spells/singularity/black_hole_circle

tag @s add ds_blackhole_curr

execute as @e[type=!#ds:immune,distance=..21,tag=!ds_blackhole_creator] at @s run function ds:spells/singularity/black_hole_effect
execute if entity @s[tag=ascension_3_blackhole] as @e[type=!#ds:immune,distance=..21,tag=!ds_blackhole_creator] at @s run effect give @s darkness 2 1

# Damage every second
execute if score @s ds-reg1 matches 1 as @e[type=!#ds:immune,distance=..6,tag=!ds_blackhole_creator] run damage @s 10 ds:no_cooldown by @a[tag=ds_blackhole_creator,limit=1]

execute if score @s ds-reg1 matches 20.. run scoreboard players set @s ds-reg1 0

# Ascension 1: Shooting Star
execute if entity @s[tag=ascension_1_blackhole] run effect give @a[tag=ds_blackhole_creator,distance=..21] speed 1 2
execute if entity @s[tag=ascension_1_blackhole] run effect give @a[tag=ds_blackhole_creator,distance=..21] saturation 1 0

# Ascension 4: Strike Assistance
execute if entity @s[tag=ascension_4_blackhole] run scoreboard players set @a[tag=ds_blackhole_creator,distance=..21,limit=1] ds-singularity-normal 0

execute as @a[tag=ds_blackhole_creator] run tag @s remove ds_blackhole_creator

tag @s remove ds_blackhole_curr