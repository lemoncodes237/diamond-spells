scoreboard players set @s ds-jump 0

execute if score @s ds-crashlanding-mightyimpact >= #ds-tick ds-var run function ds:spells/crashlanding/on_jump