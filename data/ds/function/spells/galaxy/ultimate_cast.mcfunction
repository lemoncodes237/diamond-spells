# Ultimate - Meteor

# Set score if needed
execute unless score @s ds-galaxy-ultimate matches 0.. run scoreboard players set @s ds-galaxy-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-galaxy-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

# No entity to use meteor on
execute positioned ^ ^ ^5 unless entity @e[type=#ds:enemies,tag=!galaxy_caster,distance=..30] run return run title @s actionbar "There is no enemy to use Meteor on nearby!"

# Find the entity to use meteor on
execute positioned ^ ^ ^5 as @e[type=#ds:enemies,tag=!galaxy_caster,sort=nearest,limit=1,distance=..30] at @s run summon marker ~ ~ ~ {Tags:["galaxy_meteor_location"]}
execute as @e[tag=galaxy_meteor_location,sort=nearest,limit=1] at @s run playsound entity.ender_dragon.growl master @a ~ ~ ~
playsound entity.ender_dragon.growl master @s

# Summon the meteor
summon block_display ~ ~60 ~ {Tags:["galaxy_meteor"],block_state:{Name:"magma_block"},transformation:{left_rotation:[95f,62f,81f,1f],right_rotation:[0f,0f,0f,1f],translation:[-4f,-4f,-4f],scale:[8f,8f,8f]}}

# Invincible until impact
effect give @s resistance 2 255 true

scoreboard players operation @s ds-galaxy-ultimate = #ds-tick ds-var
# 40 second cooldown
scoreboard players add @s ds-galaxy-ultimate 800