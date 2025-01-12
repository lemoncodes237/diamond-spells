# this function is executed as the marker entity, positioned at 0 0 0 and still rotated as the player
# (as that wasn't changed with the function call)

# teleport the entity forward by 1 block (based on the player rotation and the position 0 0 0).
tp @s ^ ^ ^2

# store the current position in the worlds NBT storage so we don't loose it
data modify storage ds:storage Motion set from entity @s Pos

# we don't need this entity anymore
kill @s