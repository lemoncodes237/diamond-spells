# cooldown.mcfunction
# Displays the current cooldown to the player's actionbar
# Parameters:
#   reg1: The time at which the skill will be available

scoreboard players operation @s ds-reg1 -= #ds-tick ds-var
# Round up
scoreboard players add @s ds-reg1 19
scoreboard players operation @s ds-reg1 /= #ds-twenty ds-var


title @s actionbar [{"text": "You cannot do this for ","color": "red"},{"score":{"name":"@s","objective":"ds-reg1"},"color": "red"},{"text": "s","color": "red"}]