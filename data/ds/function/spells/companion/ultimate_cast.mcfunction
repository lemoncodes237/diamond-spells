# Ultimate - Summon

# Set score if needed
execute unless score @s ds-companion-ultimate matches 0.. run scoreboard players set @s ds-companion-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-companion-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

summon wolf ~ ~ ~ {Tags:["ds_summon","summon_temp"]}
data modify entity @e[type=wolf,distance=..2,tag=summon_temp,limit=1] Owner set from entity @s UUID
attribute @e[type=wolf,distance=..2,tag=summon_temp,limit=1] max_health base set 40
data merge entity @e[type=wolf,distance=..2,tag=summon_temp,limit=1] {Health:40}
effect give @e[type=wolf,distance=..2,tag=summon_temp,limit=1] strength infinite 1 true

# Ascension 2: Faster Wolf
execute if score @s ds-ascension matches 2.. run effect give @e[type=wolf,distance=..2,tag=summon_temp,limit=1] speed infinite 1 true

execute if score @s ds-ascension matches 3.. run tag @e[type=wolf,distance=..2,tag=summon_temp,limit=1] add ascension_3_summon
execute if score @s ds-ascension matches 4.. run tag @e[type=wolf,distance=..2,tag=summon_temp,limit=1] add ascension_4_summon

# Ascension 5: Short Invincibility
execute if score @s ds-ascension matches 5.. run data merge entity @e[type=wolf,distance=..2,tag=summon_temp,limit=1] {Invulnerable:1b}

scoreboard players operation @e[type=wolf,distance=..2,tag=summon_temp,limit=1] ds-id = @s ds-id

tag @e[type=wolf,distance=..2,tag=summon_temp,limit=1] remove summon_temp

scoreboard players operation @s ds-companion-ultimate = #ds-tick ds-var
# 30 second cooldown
scoreboard players add @s ds-companion-ultimate 600