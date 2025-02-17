execute unless score @s ds-sahd-frenzy >= #ds-tick ds-var run return 0

scoreboard players add @s ds-sahd-strength 1

execute if score @s ds-sahd-strength matches 10.. unless entity @s[tag=ascension_2_frenzy] run return run scoreboard players remove @s ds-sahd-strength 1
execute if score @s ds-sahd-strength matches 50.. run return run scoreboard players remove @s ds-sahd-strength 1

function ds:spells/sahd/refresh_strength

execute if score @s ds-sahd-strength matches 49.. run advancement grant @s only ds:adv/hard/frenzy