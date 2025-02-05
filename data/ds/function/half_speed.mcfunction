scoreboard players set #ds-tick ds-reg2 0

# Banner Information
execute as @a if score @s banner matches 1.. run function ds:gacha/show_banner
# Daily Information
execute as @a if score @s daily matches 1.. run function ds:daily/show_daily
# Guide
execute as @a if score @s guide matches 1.. run function ds:guide/menu

# In the Rush attack of Calamity
execute as @a[tag=calamity_normal] at @s run function ds:spells/calamity/attack
# Clear armor stands
execute as @e[type=armor_stand,tag=calamity_proj] if predicate ds:on_ground run kill @s
# Calamity Ultimate
execute as @a if score @s ds-calamity-deathshower >= #ds-tick ds-var at @s run function ds:spells/calamity/aim_ultimate
# Calamity Ultimate Attack
execute as @e[type=marker,tag=calamity_ultimate_attack] at @s run function ds:spells/calamity/prepare_ultimate_attack

# Jump Detection
execute as @a if score @s ds-jump matches 1.. at @s run function ds:check_jump

# Ember Core Ultimate Ascension 5 tag riddance
execute as @a[tag=ascension_5_lava_walk] unless score @s ds-embercore-lavawalk >= #ds-tick ds-var run tag @s remove ascension_5_lava_walk
# Ember Core Ultimate
execute as @a if score @s ds-embercore-lavawalk >= #ds-tick ds-var at @s run function ds:spells/embercore/lava_walk

# Oceanic Judge Ultimate
execute as @e[type=marker,tag=oceanicjudge_wave] at @s run function ds:spells/oceanicjudge/move_wave

# Clearsight Ultimate
execute as @e[type=item_display,tag=ds_all_seeing_eye] at @s run function ds:spells/clearsight/all_seeing_eye
execute as @e[type=marker,tag=incoming_eye_attack] at @s run function ds:spells/clearsight/cause_damage

# Malison Ultimate
execute as @e[type=marker,tag=eradication_of_benevolence] at @s run function ds:spells/malison/eradication_of_benevolence

# Soren Normal Attack
execute as @e[type=falling_block,tag=soren_proj] at @s run function ds:spells/soren/block_damage

# Absolute Zero Normal Attack
execute as @e[type=falling_block,tag=ds_absolutezero_proj] at @s run function ds:spells/absolutezero/block_damage

# Autumn Wind Ultimate
execute as @e[type=marker,tag=ds_tornado] at @s run function ds:spells/autumnwind/move_tornado
# Autumn Wind Ascension 1
execute as @a[tag=ds_ascension_1_windy_swoop] at @s if predicate ds:on_ground run function ds:spells/autumnwind/plunge_attack
execute as @a[tag=ds_ascension_1_windy_swoop_not_yet] at @s unless predicate ds:on_ground run function ds:spells/autumnwind/off_ground

# Sautrie Ultimate Launch Attack
execute as @e[type=marker,tag=ds_sautrie_launch] at @s run function ds:spells/sautrie/launch

# Yggdrasil Ultimate (I can't believe I'm wasting 11 commands on this)
execute as @a[tag=ds_yggdrasil_lumber] if score @s ds-yggdrasil-oak matches 1.. run function ds:spells/yggdrasil/oak
execute as @a[tag=ds_yggdrasil_lumber] if score @s ds-yggdrasil-birch matches 1.. run function ds:spells/yggdrasil/birch
execute as @a[tag=ds_yggdrasil_lumber] if score @s ds-yggdrasil-jungle matches 1.. run function ds:spells/yggdrasil/jungle
execute as @a[tag=ds_yggdrasil_lumber] if score @s ds-yggdrasil-acacia matches 1.. run function ds:spells/yggdrasil/acacia
execute as @a[tag=ds_yggdrasil_lumber] if score @s ds-yggdrasil-spruce matches 1.. run function ds:spells/yggdrasil/spruce
execute as @a[tag=ds_yggdrasil_lumber] if score @s ds-yggdrasil-dark_oak matches 1.. run function ds:spells/yggdrasil/dark_oak
execute as @a[tag=ds_yggdrasil_lumber] if score @s ds-yggdrasil-pale_oak matches 1.. run function ds:spells/yggdrasil/pale_oak
execute as @a[tag=ds_yggdrasil_lumber] if score @s ds-yggdrasil-cherry matches 1.. run function ds:spells/yggdrasil/cherry
execute as @a[tag=ds_yggdrasil_lumber] if score @s ds-yggdrasil-mangrove matches 1.. run function ds:spells/yggdrasil/mangrove
execute as @a[tag=ds_yggdrasil_lumber] if score @s ds-yggdrasil-crimson matches 1.. run function ds:spells/yggdrasil/crimson
execute as @a[tag=ds_yggdrasil_lumber] if score @s ds-yggdrasil-warped matches 1.. run function ds:spells/yggdrasil/warped

# Dlainnce Normal Attack
execute as @e[type=marker,tag=ds_dlainnce_surge] at @s run function ds:spells/dlainnce/surge_move
# Dlainnce Ultimate - Chaotic Surge
execute as @e[type=marker,tag=ds_dlainnce_chaotic_surge] at @s run function ds:spells/dlainnce/chaotic_surge_move
# Chaos cooldown
execute as @e[type=!#ds:immune] if score @s ds-dlainnce-chaos-cooldown matches 1.. run scoreboard players remove @s ds-dlainnce-chaos-cooldown 1