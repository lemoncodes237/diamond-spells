scoreboard players add @s ds-var 1
execute if score @s ds-var matches 50.. run return run kill @s

scoreboard players operation @s ds-reg1 = @s ds-var
scoreboard players set @s ds-reg2 10
scoreboard players operation @s ds-reg1 %= @s ds-reg2

execute if entity @s[tag=ds_tornado_ascension_3] if score @s ds-reg1 matches 0 run summon lightning_bolt ~ ~ ~

tp @s ^ ^ ^0.8

scoreboard players set @s ds-reg1 0
function ds:spells/autumnwind/tornado
playsound entity.wind_charge.wind_burst master @a ~ ~ ~ 2 0.5

# Find the person who casted Tornado
scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-id run tag @s add ds_tornado_caster

execute positioned ~ ~3 ~ as @e[distance=..5,type=!#ds:immune,tag=!ds_tornado_caster] run damage @s 10 player_attack by @a[tag=ds_tornado_caster,limit=1]

tag @a[tag=ds_tornado_caster] remove ds_tornado_caster