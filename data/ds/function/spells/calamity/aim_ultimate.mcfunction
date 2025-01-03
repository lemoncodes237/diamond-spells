# Devil Wings
execute positioned ^ ^ ^-2 run function ds:spells/calamity/devil_wings
particle dragon_breath ~ ~ ~ 1 1 1 0 1

# Don't aim if we are casting one right now
execute if score @s ds-calamity-ultimate-attack > #ds-tick ds-var run return 0

scoreboard players set @s ds-reg2 0

function ds:spells/calamity/find_block