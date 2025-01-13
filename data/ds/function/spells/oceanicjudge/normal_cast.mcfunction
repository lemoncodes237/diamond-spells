# Normal Attack - Hydro Sweep

# Set score if needed
execute unless score @s ds-oceanicjudge-normal matches 0.. run scoreboard players set @s ds-oceanicjudge-normal 0

scoreboard players operation @s ds-reg1 = @s ds-oceanicjudge-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

scoreboard players set @s ds-var 0
execute anchored eyes positioned ^ ^ ^3 run function ds:spells/oceanicjudge/hydro_sweep

# Ascension 3: Hydroelectricity
execute if block ~ ~ ~ water if score @s ds-ascension matches 3.. anchored eyes positioned ^ ^ ^6 run function ds:spells/oceanicjudge/hydro_sweep
execute if block ~ ~ ~ water if score @s ds-ascension matches 3.. anchored eyes positioned ^ ^ ^9 run function ds:spells/oceanicjudge/hydro_sweep

scoreboard players operation @s ds-oceanicjudge-normal = #ds-tick ds-var
# 1.5 second cooldown
scoreboard players add @s ds-oceanicjudge-normal 30