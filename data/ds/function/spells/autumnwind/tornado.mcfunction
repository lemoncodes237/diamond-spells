scoreboard players add @s ds-reg1 1
execute if score @s ds-reg1 matches 500.. run return 0

execute store result storage ds:autumn_wind dist double 0.01 run scoreboard players get @s ds-reg1

function ds:spells/autumnwind/tornado_particle with storage ds:autumn_wind

execute positioned ~ ~0.015 ~ rotated ~6 ~ run return run function ds:spells/autumnwind/tornado