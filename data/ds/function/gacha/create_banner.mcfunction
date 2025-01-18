# Different from wand types, unfortunately

# Change this to number of legendaries
execute store result score #ds-banner ds-var run random value 1..8

# Change this to number of rares
execute store result score #ds-banner ds-reg1 run random value 1..12
execute store result score #ds-banner ds-reg2 run random value 1..11

# Avoid the same rares
execute if score #ds-banner ds-reg2 >= #ds-banner ds-reg1 run scoreboard players add #ds-banner ds-reg2 1

tellraw @a "A new banner has been generated! Use '/trigger banner' to view it!"
