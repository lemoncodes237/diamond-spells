tp @s ^ ^ ^0.5
function ds:spells/oceanicjudge/wave_particles
scoreboard players add @s ds-var 1

execute if score @s ds-var matches 60.. run kill @s

execute positioned ^ ^ ^ as @e[distance=..1.5,type=!#ds:immune] run damage @s 8 player_attack at ^ ^ ^-1
execute positioned ^1 ^ ^ as @e[distance=..1.5,type=!#ds:immune] run damage @s 8 player_attack at ^1 ^ ^-1
execute positioned ^2 ^ ^ as @e[distance=..1.5,type=!#ds:immune] run damage @s 8 player_attack at ^2 ^ ^-1
execute positioned ^3 ^ ^ as @e[distance=..1.5,type=!#ds:immune] run damage @s 8 player_attack at ^3 ^ ^-1
execute positioned ^4 ^ ^ as @e[distance=..1.5,type=!#ds:immune] run damage @s 8 player_attack at ^4 ^ ^-1
execute positioned ^5 ^ ^ as @e[distance=..1.5,type=!#ds:immune] run damage @s 8 player_attack at ^5 ^ ^-1
execute positioned ^-1 ^ ^ as @e[distance=..1.5,type=!#ds:immune] run damage @s 8 player_attack at ^-1 ^ ^-1
execute positioned ^-2 ^ ^ as @e[distance=..1.5,type=!#ds:immune] run damage @s 8 player_attack at ^-2 ^ ^-1
execute positioned ^-3 ^ ^ as @e[distance=..1.5,type=!#ds:immune] run damage @s 8 player_attack at ^-3 ^ ^-1
execute positioned ^-4 ^ ^ as @e[distance=..1.5,type=!#ds:immune] run damage @s 8 player_attack at ^-4 ^ ^-1
execute positioned ^-5 ^ ^ as @e[distance=..1.5,type=!#ds:immune] run damage @s 8 player_attack at ^-5 ^ ^-1

execute if score @s ds-var matches 30.. if entity @s[tag=ascension_5_wave] run function ds:spells/oceanicjudge/second_wave