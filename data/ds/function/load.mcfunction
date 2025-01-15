tellraw @a "Spells Loaded"

scoreboard objectives add ds-spell_cast used:carrot_on_a_stick
scoreboard objectives add ds-var dummy
scoreboard objectives add ds-ascension dummy
scoreboard objectives add ds-jump minecraft.custom:jump
scoreboard objectives add ds-id dummy

# Registers
scoreboard objectives add ds-reg1 dummy
scoreboard objectives add ds-reg2 dummy
scoreboard objectives add ds-reg3 dummy
scoreboard objectives add ds-reg4 dummy
scoreboard objectives add ds-reg5 dummy

# Reset
scoreboard objectives add ds-reset dummy
# When it is the first time being loaded
execute unless score #ds-tick ds-reset matches 0.. run scoreboard players set #ds-tick ds-reset 0

scoreboard players set #ds-twenty ds-var 20

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