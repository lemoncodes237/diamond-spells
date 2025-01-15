particle dust{color:[1,0,1],scale:0.7} ~ ~ ~ 6 1.5 6 0.1 400
playsound block.respawn_anchor.charge master @a ~ ~ ~ 3 0.2

# Find the person who casted
scoreboard players operation #ds-temp ds-var = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-var run tag @s add erad_caster

scoreboard players set #ds-temp ds-reg1 0
execute if entity @s[tag=ascension_1_erad] run scoreboard players set #ds-temp ds-reg1 1

execute as @e[distance=..12.3,type=!#ds:immune,tag=!erad_caster] run function ds:spells/malison/pre_damage

tag @a[tag=erad_caster] remove erad_caster