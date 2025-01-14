execute unless entity @s[tag=omniscient_eye] positioned ~ ~-6 ~ run function ds:spells/clearsight/eye_circle
execute if entity @s[tag=omniscient_eye] positioned ~ ~-6 ~ run function ds:spells/clearsight/eye_circle_big

scoreboard players add @s ds-var 1
scoreboard players add @s ds-reg1 1

execute if score @s ds-reg1 matches 200.. run return run kill @s

execute if score @s ds-var matches 5.. unless entity @s[tag=omniscient_eye] run function ds:spells/clearsight/eye_attack
execute if score @s ds-var matches 5.. if entity @s[tag=omniscient_eye] run function ds:spells/clearsight/eye_attack_big


# Ascension 1: Mobile Eye
execute if entity @s[tag=mobile_eye] run function ds:spells/clearsight/teleport_to_player