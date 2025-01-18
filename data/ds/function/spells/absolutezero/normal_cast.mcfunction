# Normal Attack - Iceology

# Set score if needed
execute unless score @s ds-absolutezero-normal matches 0.. run scoreboard players set @s ds-absolutezero-normal 0

scoreboard players operation @s ds-reg1 = @s ds-absolutezero-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

# Nine ice in random locations
function ds:spells/absolutezero/summon_ice
function ds:spells/absolutezero/summon_ice
function ds:spells/absolutezero/summon_ice
function ds:spells/absolutezero/summon_ice
function ds:spells/absolutezero/summon_ice
function ds:spells/absolutezero/summon_ice
function ds:spells/absolutezero/summon_ice
function ds:spells/absolutezero/summon_ice
function ds:spells/absolutezero/summon_ice
function ds:spells/absolutezero/summon_ice

# Ascension 2: Packed Ice
execute if score @s ds-ascension matches 2.. run function ds:spells/absolutezero/summon_ice
execute if score @s ds-ascension matches 2.. run function ds:spells/absolutezero/summon_ice

playsound block.glass.break master @a ~ ~ ~
particle block_crumble{block_state:{Name:"ice"}} ~ ~1 ~ 0.5 0.5 0.5 0.1 10

scoreboard players operation @s ds-absolutezero-normal = #ds-tick ds-var
# 4 second cooldown
scoreboard players add @s ds-absolutezero-normal 80