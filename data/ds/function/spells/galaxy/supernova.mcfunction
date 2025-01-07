execute anchored eyes run particle electric_spark ^ ^ ^6 0.2 0.1 0.2 0 10
execute anchored eyes run particle electric_spark ^1 ^ ^5 0.2 0.1 0.2 0 10
execute anchored eyes run particle electric_spark ^-1 ^ ^5 0.2 0.1 0.2 0 10
execute anchored eyes run particle electric_spark ^2 ^ ^4 0.2 0.1 0.2 0 10
execute anchored eyes run particle electric_spark ^-2 ^ ^4 0.2 0.1 0.2 0 10

execute positioned ^ ^ ^5 as @e[type=!#ds:immune,tag=!galaxy_caster,distance=..3] run damage @s 5 player_attack by @a[tag=galaxy_caster,sort=nearest,limit=1]