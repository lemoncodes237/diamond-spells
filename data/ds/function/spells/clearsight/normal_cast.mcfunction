# Normal Attack - Light Trail

# Set score if needed
execute unless score @s ds-clearsight-normal matches 0.. run scoreboard players set @s ds-clearsight-normal 0

scoreboard players operation @s ds-reg1 = @s ds-clearsight-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

scoreboard players set @s ds-var 0
execute anchored eyes positioned ^ ^ ^1 run function ds:spells/clearsight/light_trail

playsound block.beacon.activate master @a ~ ~ ~

scoreboard players operation @s ds-clearsight-normal = #ds-tick ds-var
# 1 second cooldown
scoreboard players add @s ds-clearsight-normal 20