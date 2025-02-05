scoreboard players add @s ds-reg2 1
execute if score @s ds-reg2 matches 10.. run return 0

function ds:spells/dlainnce/chaotic_ending_slash_particle with storage ds:dlainnce

execute positioned ^ ^ ^0.5 run return run function ds:spells/dlainnce/chaotic_ending_slash_line