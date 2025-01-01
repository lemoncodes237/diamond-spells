tellraw @a "Spells Loaded"

scoreboard objectives add ds-spell_cast used:carrot_on_a_stick
scoreboard objectives add ds-var dummy

# Registers
scoreboard objectives add ds-reg1 dummy
scoreboard objectives add ds-reg2 dummy
scoreboard objectives add ds-reg3 dummy
scoreboard players set #ds-twenty ds-var 20

# Jumper cooldowns
scoreboard objectives add ds-jumper-normal dummy
scoreboard objectives add ds-jumper-ultimate dummy