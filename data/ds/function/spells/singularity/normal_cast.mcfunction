# Normal Attack - Line Strike

# Set score if needed
execute unless score @s ds-singularity-normal matches 0.. run scoreboard players set @s ds-singularity-normal 0

scoreboard players operation @s ds-reg1 = @s ds-singularity-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

scoreboard players set @s ds-var 0
execute anchored eyes positioned ^ ^ ^ run function ds:spells/singularity/line_attack

playsound entity.fishing_bobber.throw master @a ~ ~ ~

scoreboard players operation @s ds-singularity-normal = #ds-tick ds-var
# 1.5 second cooldown
scoreboard players add @s ds-singularity-normal 30