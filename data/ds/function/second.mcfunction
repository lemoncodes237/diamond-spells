scoreboard players set #ds-tick ds-reg1 0

# Runs every second

execute as @a at @s run function ds:advancement

# Allow players to view banner information
scoreboard players enable @a banner
# And dailies
scoreboard players enable @a daily
# And guide
scoreboard players enable @a guide

# What if banner doesn't exist? CREATE ONE!
execute unless score #ds-banner ds-var matches -2147483648..2147483647 run function ds:gacha/create_banner
# No daily? CREATE ONE!
execute as @a unless score @s ds-daily matches -2147483648..2147483647 run function ds:daily/create_daily

# ID Creation
execute as @a unless score @s ds-id matches 0.. run function ds:generate_id

# Cooldown reset
execute as @a unless score @s ds-reset >= #ds-tick ds-reset run function ds:need_reset
execute if score #ds-tick ds-var matches ..-1 run function ds:hard_reset

# Luck 23 means that Adagio, Conductor's Baton's Ultimate has been cast
execute as @a if score @s ds-conductors-baton-adagio >= #ds-tick ds-var at @s run particle note ~ ~ ~ 2 1 2 0.1 20

# If this is false, we get rid of the multiplier
execute as @a if entity @s[tag=calamity_ultimate] if score @s ds-calamity-deathshower < #ds-tick ds-var run function ds:spells/calamity/end_ultimate
# Clear fall damage multiplier
execute as @a if entity @s[tag=calamity_normal] if predicate ds:on_ground run function ds:spells/calamity/clear_fall_damage_inv

# End of Size Shifter Ultimate
execute as @a[tag=sizeshifter_ultimate] unless score @s ds-sizeshifter-shrink >= #ds-tick ds-var at @s run function ds:spells/sizeshifter/end_ultimate

# Sahd Ultimate
execute as @a if score @s ds-sahd-frenzy >= #ds-tick ds-var at @s run function ds:spells/sahd/refresh_strength
execute as @a[tag=ascension_2_frenzy] if score @s ds-sahd-frenzy < #ds-tick ds-var run tag @s remove ascension_2_frenzy

# Malison Curse
execute as @e[tag=ds_cursed] run function ds:spells/malison/on_curse

# End of Soren Ultimate
execute as @a[tag=ds_architect] if score @s ds-soren-architect < #ds-tick ds-var run function ds:spells/soren/end_ultimate

# Companion Ultimate
execute as @e[type=wolf,tag=ds_summon] at @s run function ds:spells/companion/summon

# Hydrogen Ultimate
execute as @a[tag=ds_nuclear] at @s run function ds:spells/hydrogen/nuclear

# Blunder Ultimate
execute as @a[tag=ds_rf2] at @s run function ds:spells/blunder/rf2

# Yggdrasil Ultimate
execute as @a[tag=ds_yggdrasil_lumber] if score @s ds-yggdrasil-lumber <= #ds-tick ds-var run tag @s remove ds_yggdrasil_lumber