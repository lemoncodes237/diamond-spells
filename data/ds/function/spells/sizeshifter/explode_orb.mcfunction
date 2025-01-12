execute as @e[type=!#ds:immune,distance=..5] run damage @s 7 explosion

# Ascension 2: Poisonous Growth
execute if entity @s[tag=ascension_2] run effect give @e[type=!#ds:immune,distance=..5] poison 10

kill @s

particle explosion ~ ~ ~ 0 0 0 0 1
particle dust{color:[1,0,0],scale:0.5} ~ ~ ~ 1 1 1 0.1 30
playsound entity.generic.explode master @a ~ ~ ~