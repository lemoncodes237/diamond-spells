$effect give @s strength 2 $(strength)
scoreboard players add @s ds-sahd-strength 1
title @s actionbar [{"text":""},{"text":"Current Level of Strength: "},{"score":{"name":"@s","objective":"ds-sahd-strength"}}]
scoreboard players remove @s ds-sahd-strength 1