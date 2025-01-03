# Death Shower Attack
scoreboard players operation @s ds-reg1 = @s ds-calamity-ultimate-attack
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

scoreboard players set @s ds-reg2 0
function ds:spells/calamity/summon_ultimate_attack