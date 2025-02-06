# New way to do it - use macros
execute store result storage ds:wand num int 1 run scoreboard players get @s ds-var
function ds:lib/wand/cast with storage ds:wand