execute if score @s ds-reg2 matches 50.. run return -1

scoreboard players add @s ds-reg2 1
execute if block ^ ^ ^1 #ds:no_block positioned ^ ^ ^1 run return run function ds:spells/calamity/find_block

# Block found
function ds:spells/calamity/alchemy_circle