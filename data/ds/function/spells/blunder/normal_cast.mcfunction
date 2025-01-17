# Normal Attack - c5

# What?! Oh my god. Come on. But, come on. It is - I mean - no but sorry - c5-c6? I mean I'm sorry but I saw that instantly. Is he nuts? No but, I mean that is insane. I mean I just, the moment I - I was looking at positions somewhere else - the moment you told me c5, I opened the analysis board on the screen, I instantly saw c6. Instantly. I mean this is insane. Look at him. No but okay this is just - I mean, this is outrageous. Just, I've never seen something like this. Just insane. What's going on? Poor guy he's completely out of shape. I don't know what happened to him. He completely lost it. No, poor guy. And he has to go again to the press conferences and stuff. What's going on? Ya, he went totally nuts. I mean I haven't seen Ian like this even in ordinary tournaments. Jesus, what's going on. Oof, insane. Totally lost sense of danger. Completely lost sense of danger. Trapped his bishop...but it's just an insane blunder. For me, instant. It's just an instant thing, the bishop is so obviously trapped, it's not even close...It's such an obvious - it will go down in history as Bobby Fisher part 2. They'll make a movie about this.
# If you find this and get the reference, please let me know because I love you lol

# Set score if needed
execute unless score @s ds-blunder-normal matches 0.. run scoreboard players set @s ds-blunder-normal 0

scoreboard players operation @s ds-reg1 = @s ds-blunder-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

playsound entity.ender_dragon.flap master @a ~ ~ ~ 12

scoreboard players set #ds-temp ds-var 12
# Ascension 4: c6
execute if score @s ds-ascension matches 4.. run scoreboard players add #ds-temp ds-var 2

function ds:spells/blunder/face
particle campfire_cosy_smoke ~ ~1 ~ 1 1 1 0.1 5

# If Rf2 is active
execute if entity @s[tag=ds_rf2] run damage @s 1 ds:no_armor

# Ascension 2: Blitz
execute if score @s ds-ascension matches 2.. run effect give @s speed 1 1

scoreboard players operation @s ds-blunder-normal = #ds-tick ds-var
# 3 second cooldown
scoreboard players add @s ds-blunder-normal 60

# If Rf2 is active
execute if entity @s[tag=ds_rf2] run scoreboard players remove @s ds-blunder-normal 50