# This is a very rare case where the tick timer has simply gone too far and has spilled over to the negatives.
# We must make sure that cooldowns are fine. We do this by setting everything to 0.
# This immediately resets all cooldowns but doesn't cause any further problems.

scoreboard players set #ds-tick ds-var 0
scoreboard players add #ds-tick ds-reset 1

execute as @e[type=!player] if score @s ds-var matches -2147483648..2147483647 run scoreboard players set @s ds-var 0
execute as @e[type=!player] if score @s ds-reg1 matches -2147483648..2147483647 run scoreboard players set @s ds-reg1 0
execute as @e[type=!player] if score @s ds-reg2 matches -2147483648..2147483647 run scoreboard players set @s ds-reg2 0
execute as @e[type=!player] if score @s ds-reg3 matches -2147483648..2147483647 run scoreboard players set @s ds-reg3 0
execute as @e[type=!player] if score @s ds-reg4 matches -2147483648..2147483647 run scoreboard players set @s ds-reg4 0
execute as @e[type=!player] if score @s ds-reg5 matches -2147483648..2147483647 run scoreboard players set @s ds-reg5 0