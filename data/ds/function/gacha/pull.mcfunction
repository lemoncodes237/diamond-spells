execute anchored eyes run summon item_display ^ ^ ^2 {item:{id:"carrot_on_a_stick",components:{item_model:"spectral_star"}},Tags:["ds_spectral_star","ds_star_temp"]}
item modify entity @s weapon.mainhand ds:take_one
scoreboard players operation @e[type=item_display,tag=ds_star_temp,distance=..5,limit=1] ds-id = @s ds-id
tag @e[type=item_display,tag=ds_star_temp,distance=..5,limit=1] remove ds_star_temp