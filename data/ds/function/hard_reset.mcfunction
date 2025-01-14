# This is a very rare case where the tick timer has simply gone too far and has spilled over to the negatives.
# We must make sure that cooldowns are fine. We do this by setting everything to 0.
# This immediately resets all cooldowns but doesn't cause any further problems.

scoreboard players set #ds-tick ds-var 0
scoreboard players set @a ds-calamity-deathshower -1
scoreboard players set @a ds-calamity-normal 0
scoreboard players set @a ds-calamity-ultimate 0
scoreboard players set @a ds-clearsight-normal 0
scoreboard players set @a ds-clearsight-ultimate 0
scoreboard players set @a ds-conductors-baton-adagio -1
scoreboard players set @a ds-conductors-baton-normal 0
scoreboard players set @a ds-conductors-baton-ultimate 0
scoreboard players set @a ds-crashlanding-normal 0
scoreboard players set @a ds-crashlanding-ultimate 0
scoreboard players set @a ds-embercore-normal 0
scoreboard players set @a ds-embercore-ultimate 0
scoreboard players set @a ds-galaxy-normal 0
scoreboard players set @a ds-galaxy-ultimate 0
scoreboard players set @a ds-jumper-normal 0
scoreboard players set @a ds-jumper-ultimate 0
scoreboard players set @a ds-mining-fever-normal 0
scoreboard players set @a ds-mining-fever-ultimate 0
scoreboard players set @a ds-nullification-normal 0
scoreboard players set @a ds-nullification-ultimate 0
scoreboard players set @a ds-oceanicjudge-normal 0
scoreboard players set @a ds-oceanicjudge-ultimate 0
scoreboard players set @a ds-sahd-normal 0
scoreboard players set @a ds-sahd-ultimate 0
scoreboard players set @a ds-sizeshifter-normal 0
scoreboard players set @a ds-sizeshifter-ultimate 0