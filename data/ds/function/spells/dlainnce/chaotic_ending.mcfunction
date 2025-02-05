scoreboard players set @s ds-reg1 0
execute anchored eyes positioned ^ ^ ^1 rotated ~-120 ~ run function ds:spells/dlainnce/chaotic_ending_slash
playsound entity.wither.break_block master @a ~ ~ ~ 3 0.5

execute anchored eyes positioned ^ ^ ^3 as @e[type=!#ds:immune,distance=..5,tag=!dlainnce_caster] run function ds:spells/dlainnce/chaotic_ending_hit

execute unless score @s ds-ascension matches 2.. run scoreboard players set @s ds-dlainnce-chaos 0
# Ascension 2: Chaotic Rejuvenation
execute if score @s ds-ascension matches 2.. if score @s ds-dlainnce-chaos matches 10.. run scoreboard players set @s ds-dlainnce-chaos 10