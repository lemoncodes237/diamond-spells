scoreboard players add @s ds-blunder-rf2 1

execute if score @s ds-blunder-rf2 matches 0..14 run return 0

tag @s remove ds_rf2
tag @s[tag=ascension_3_rf2] remove ascension_3_rf2