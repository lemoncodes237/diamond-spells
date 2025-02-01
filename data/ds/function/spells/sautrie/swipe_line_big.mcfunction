scoreboard players add @s ds-reg2 1
execute if score @s ds-reg2 matches 8.. run return 0

function ds:spells/sautrie/swipe_particle with storage ds:sautrie

execute positioned ^ ^ ^0.5 run return run function ds:spells/sautrie/swipe_line_big