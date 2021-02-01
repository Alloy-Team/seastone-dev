scoreboard players remove @s[scores={sea.lf.r.smc=1..}] sea.lf.r.smc 1
scoreboard players add @s sea.lf.r.smc 0


# Nonhaki Immunity
execute as @e[distance=0.1..5] at @s positioned ~ ~1 ~ positioned ^ ^ ^0.2 run function sea:fruit/system/logia/rumblerumble/faced

# Arrow Phase
execute if score @s sea.bow_used matches 1.. run scoreboard players operation @e[distance=..2,sort=nearest,limit=1,type=arrow] sea.oid = @s ac_entity_id
execute positioned ~ ~1 ~ at @e[type=arrow,distance=..2.5] unless score @e[type=arrow,sort=nearest,limit=1] sea.oid = @s ac_entity_id as @e[type=arrow,sort=nearest,limit=1] at @s run data merge entity @s {damage:0d}
execute positioned ~ ~1 ~ at @e[type=arrow,distance=..2.5] unless score @e[type=arrow,sort=nearest,limit=1] sea.oid = @s ac_entity_id as @e[type=arrow,sort=nearest,limit=1] at @s run particle firework ~ ~ ~ 0 0 0 0.1 4 force
execute positioned ~ ~1 ~ at @e[type=arrow,distance=..2.5] unless score @e[type=arrow,sort=nearest,limit=1] sea.oid = @s ac_entity_id as @e[type=arrow,sort=nearest,limit=1] at @s run kill @s


# Form
execute if entity @s[nbt=!{SelectedItem:{}},predicate=alloycore:player/sneak,tag=!ac_sneaked,x_rotation=90,tag=!sea.fruit.logia.rumble.form] run function sea:fruit/system/logia/rumblerumble/form/enter
execute if entity @s[tag=sea.fruit.logia.rumble.form] run function sea:fruit/system/logia/rumblerumble/form/main

# Smite
execute if entity @s[nbt=!{SelectedItem:{}},scores={ac_hits=1..},predicate=!alloycore:player/sneak] positioned ~ ~1 ~ positioned ^ ^ ^2 unless entity @s[distance=..1.5] at @e[distance=..1.5,sort=nearest,limit=1] run summon lightning_bolt
execute if entity @s[nbt=!{SelectedItem:{}},scores={ac_hits=1..},predicate=!alloycore:player/sneak] positioned ~ ~1 ~ positioned ^ ^ ^2 unless entity @s[distance=..1.5] at @e[distance=..1.5,sort=nearest,limit=1] run tag @s add sea.smiter
execute if entity @s[tag=sea.smiter] if entity @e[type=lightning_bolt,distance=..5] run effect give @s resistance 1 255 true
execute if entity @s[tag=sea.smiter] unless entity @e[type=lightning_bolt,distance=..5] run effect clear @s resistance
execute if entity @s[tag=sea.smiter] unless entity @e[type=lightning_bolt,distance=..5] run tag @s remove sea.smiter

# Ultra Smite
execute if entity @s[nbt=!{SelectedItem:{}},scores={ac_hits=1..,sea.lf.r.smc=0},predicate=alloycore:player/sneak] positioned ~ ~1 ~ positioned ^ ^ ^2 unless entity @s[distance=..1.5] at @e[distance=..1.5,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["sea.ultrasmite"]}
execute if entity @s[nbt=!{SelectedItem:{}},scores={ac_hits=1..,sea.lf.r.smc=0},predicate=alloycore:player/sneak] positioned ~ ~1 ~ positioned ^ ^ ^2 unless entity @s[distance=..1.5] at @e[distance=..1.5,sort=nearest,limit=1] run scoreboard players set @s sea.lf.r.smc 200
