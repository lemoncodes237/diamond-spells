# Ultimate - Gold Rush

# Set score if needed
execute unless score @s ds-mining-fever-ultimate matches 0.. run scoreboard players set @s ds-mining-fever-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-mining-fever-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

particle block_crumble{block_state:{Name:"stone"}} ~ ~ ~ 0.5 0.5 0.5 0 30
playsound entity.elder_guardian.curse master @a ~ ~ ~
effect give @s haste 20 7
effect give @s speed 20 0

scoreboard players operation @s ds-mining-fever-ultimate = #ds-tick ds-var
# 1 minute cooldown
scoreboard players add @s ds-mining-fever-ultimate 1200