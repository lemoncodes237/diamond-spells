tellraw @a "Spells Loaded"

scoreboard objectives add ds-spell_cast used:carrot_on_a_stick
scoreboard objectives add ds-var dummy
scoreboard objectives add ds-ascension dummy
scoreboard objectives add ds-jump minecraft.custom:jump
scoreboard objectives add ds-id dummy
scoreboard objectives add ds-pity dummy
scoreboard objectives add ds-rare-pity dummy
scoreboard objectives add ds-version dummy

# Banner
scoreboard objectives add banner trigger
# For stats purposes
scoreboard objectives add ds-pulls dummy
# Dailies
scoreboard objectives add ds-daily dummy
# Trigger
scoreboard objectives add daily trigger
# Guide Trigger
scoreboard objectives add guide trigger

# Health store
scoreboard objectives add ds-health dummy

# Registers
scoreboard objectives add ds-reg1 dummy
scoreboard objectives add ds-reg2 dummy
scoreboard objectives add ds-reg3 dummy
scoreboard objectives add ds-reg4 dummy
scoreboard objectives add ds-reg5 dummy

# For Spawner Advancement
scoreboard objectives add ds-spawner-broken mined:spawner

# Reset
scoreboard objectives add ds-reset dummy
# When it is the first time being loaded
execute unless score #ds-tick ds-reset matches 0.. run scoreboard players set #ds-tick ds-reset 0

scoreboard players set #ds-twenty ds-var 20
scoreboard players set #ds-two ds-var 2

# Jumper cooldowns
scoreboard objectives add ds-jumper-normal dummy
scoreboard objectives add ds-jumper-ultimate dummy

# Conductor's Baton cooldowns
scoreboard objectives add ds-conductors-baton-normal dummy
scoreboard objectives add ds-conductors-baton-ultimate dummy
# Adagio Timer
scoreboard objectives add ds-conductors-baton-adagio dummy

# Calamity cooldowns
scoreboard objectives add ds-calamity-normal dummy
scoreboard objectives add ds-calamity-ultimate dummy
scoreboard objectives add ds-calamity-ultimate-attack dummy
# Death Shower Timer
scoreboard objectives add ds-calamity-deathshower dummy

# Mining Fever cooldowns
scoreboard objectives add ds-mining-fever-normal dummy
scoreboard objectives add ds-mining-fever-ultimate dummy

# Galaxy cooldowns
scoreboard objectives add ds-galaxy-normal dummy
scoreboard objectives add ds-galaxy-ultimate dummy

# Nullification cooldowns
scoreboard objectives add ds-nullification-normal dummy
scoreboard objectives add ds-nullification-ultimate dummy

# Crash Landing cooldowns
scoreboard objectives add ds-crashlanding-normal dummy
scoreboard objectives add ds-crashlanding-ultimate dummy
# Mighty Impact timer
scoreboard objectives add ds-crashlanding-mightyimpact dummy

# Ember Core cooldowns
scoreboard objectives add ds-embercore-normal dummy
scoreboard objectives add ds-embercore-ultimate dummy
# Lava Walk timer
scoreboard objectives add ds-embercore-lavawalk dummy

# Size Shifter cooldowns
scoreboard objectives add ds-sizeshifter-normal dummy
scoreboard objectives add ds-sizeshifter-ultimate dummy
# Shrink timer
scoreboard objectives add ds-sizeshifter-shrink dummy

# Oceanic Judge
scoreboard objectives add ds-oceanicjudge-normal dummy
scoreboard objectives add ds-oceanicjudge-ultimate dummy

# Sahd cooldowns
scoreboard objectives add ds-sahd-normal dummy
scoreboard objectives add ds-sahd-ultimate dummy
# Strength tracker
scoreboard objectives add ds-sahd-strength dummy
# Frenzy timer
scoreboard objectives add ds-sahd-frenzy dummy

# Clearsight cooldowns
scoreboard objectives add ds-clearsight-normal dummy
scoreboard objectives add ds-clearsight-ultimate dummy

# Malison cooldowns
scoreboard objectives add ds-malison-normal dummy
scoreboard objectives add ds-malison-ultimate dummy
# Curse counter
scoreboard objectives add ds-malison-curse dummy

# Farmer's Delight cooldowns
scoreboard objectives add ds-farmersdelight-normal dummy
scoreboard objectives add ds-farmersdelight-ultimate dummy

# Soren cooldowns
scoreboard objectives add ds-soren-normal dummy
scoreboard objectives add ds-soren-ultimate dummy
# Architect timer
scoreboard objectives add ds-soren-architect dummy

# Singularity cooldowns
scoreboard objectives add ds-singularity-normal dummy
scoreboard objectives add ds-singularity-ultimate dummy
# Player Black Hole Timer
scoreboard objectives add ds-singularity-player dummy

# Companion cooldowns
scoreboard objectives add ds-companion-normal dummy
scoreboard objectives add ds-companion-ultimate dummy

# Hydrogen cooldowns
scoreboard objectives add ds-hydrogen-normal dummy
scoreboard objectives add ds-hydrogen-ultimate dummy
# Nuclear timer
scoreboard objectives add ds-hydrogen-nuclear dummy

# Blunder cooldowns
scoreboard objectives add ds-blunder-normal dummy
scoreboard objectives add ds-blunder-ultimate dummy
# Rf2 timer
scoreboard objectives add ds-blunder-rf2 dummy

# Absolute Zero cooldowns
scoreboard objectives add ds-absolutezero-normal dummy
scoreboard objectives add ds-absolutezero-ultimate dummy

# Autumn Wind cooldowns
scoreboard objectives add ds-autumnwind-normal dummy
scoreboard objectives add ds-autumnwind-ultimate dummy
# Windy Swoop damage modifier timer
scoreboard objectives add ds-autumnwind-swoop dummy
# Windy Swoop damage modifier on Ascension 5
scoreboard objectives add ds-autumnwind-a5-rares dummy
# Invincibility frames for Windy Swoop modifier
scoreboard objectives add ds-autumnwind-invincibility dummy

# Sautrie cooldowns
scoreboard objectives add ds-sautrie-normal dummy
scoreboard objectives add ds-sautrie-ultimate dummy
# Hidden Methods timer
scoreboard objectives add ds-sautrie-hiddenmethods dummy
# Hidden Methods attack counter
scoreboard objectives add ds-sautrie-hiddencounter dummy

# Yggdrasil cooldowns
scoreboard objectives add ds-yggdrasil-normal dummy
scoreboard objectives add ds-yggdrasil-ultimate dummy
# Double Wood
scoreboard objectives add ds-yggdrasil-oak mined:oak_log
scoreboard objectives add ds-yggdrasil-birch mined:birch_log
scoreboard objectives add ds-yggdrasil-jungle mined:jungle_log
scoreboard objectives add ds-yggdrasil-acacia mined:acacia_log
scoreboard objectives add ds-yggdrasil-spruce mined:spruce_log
scoreboard objectives add ds-yggdrasil-dark_oak mined:dark_oak_log
scoreboard objectives add ds-yggdrasil-pale_oak mined:pale_oak_log
scoreboard objectives add ds-yggdrasil-mangrove mined:mangrove_log
scoreboard objectives add ds-yggdrasil-cherry mined:cherry_log
scoreboard objectives add ds-yggdrasil-warped mined:warped_stem
scoreboard objectives add ds-yggdrasil-crimson mined:crimson_stem
# Lumber timer
scoreboard objectives add ds-yggdrasil-lumber dummy

# Shredder cooldowns
scoreboard objectives add ds-shredder-normal dummy
scoreboard objectives add ds-shredder-ultimate dummy
# Armor Shred timer
scoreboard objectives add ds-shredder-armorshred dummy
# Armor Steal timer
scoreboard objectives add ds-shredder-armorsteal dummy

# Dlainnce cooldowns
scoreboard objectives add ds-dlainnce-normal dummy
scoreboard objectives add ds-dlainnce-ultimate dummy
# Chaos counter
scoreboard objectives add ds-dlainnce-chaos dummy
scoreboard objectives add ds-dlainnce-chaos-tick dummy
scoreboard objectives add ds-dlainnce-chaos-cooldown dummy
scoreboard objectives add ds-dlainnce-chaos-caster dummy