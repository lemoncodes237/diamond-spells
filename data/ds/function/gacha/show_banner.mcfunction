scoreboard players set @s banner 0

tellraw @s "Current Banners:"
tellraw @s {"text":"Featured Legendary","color":"gold"}
function ds:gacha/display_legendary
tellraw @s ""
tellraw @s {"text":"Featured Rares","color":"aqua"}
function ds:gacha/display_rares

execute unless score @s ds-pity matches -2147483648..2147483647 run scoreboard players set @s ds-pity 0
execute unless score @s ds-rare-pity matches -2147483648..2147483647 run scoreboard players set @s ds-rare-pity 0

scoreboard players set @s ds-reg1 100
scoreboard players set @s ds-reg2 10

scoreboard players operation @s ds-reg1 -= @s ds-pity
scoreboard players operation @s ds-reg2 -= @s ds-rare-pity

tellraw @s [{"text":""},{"score":{"name":"@s","objective":"ds-reg2"}},{"text":" more spectral stars until a guaranteed rare item or higher!"}]
tellraw @s [{"text":""},{"score":{"name":"@s","objective":"ds-reg1"}},{"text":" more spectral stars until a guaranteed legendary wand!"}]