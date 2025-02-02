setblock ~ ~ ~ air destroy

# Ascension 3: Efficient Chopping
execute if score @s ds-ascension matches 3.. positioned ~ ~1 ~ facing ~ ~2 ~ run function ds:spells/yggdrasil/additional_beam
execute if score @s ds-ascension matches 3.. positioned ~ ~-1 ~ facing ~ ~-2 ~ run function ds:spells/yggdrasil/additional_beam