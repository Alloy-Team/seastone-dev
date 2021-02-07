scoreboard players remove @s[scores={sea.lf.r.smc=1..}] sea.lf.r.smc 1
scoreboard players add @s sea.lf.r.smc 0

execute if block ~ ~ ~ fire run effect give @s fire_resistance 4 0 true

# Nonhaki Immunity
execute as @e[distance=0.1..5] at @s positioned ~ ~1 ~ positioned ^ ^ ^0.2 run function sea:fruit/system/logia/flameflame/faced

# Arrow Phase
execute if score @s sea.bow_used matches 1.. run scoreboard players operation @e[distance=..2,sort=nearest,limit=1,type=arrow] sea.oid = @s ac_entity_id
execute positioned ~ ~1 ~ at @e[type=arrow,distance=..2.5] unless score @e[type=arrow,sort=nearest,limit=1] sea.oid = @s ac_entity_id as @e[type=arrow,sort=nearest,limit=1] at @s run data merge entity @s {damage:0d}
execute positioned ~ ~1 ~ at @e[type=arrow,distance=..2.5] unless score @e[type=arrow,sort=nearest,limit=1] sea.oid = @s ac_entity_id as @e[type=arrow,sort=nearest,limit=1] at @s run particle flame ~ ~ ~ 0 0 0 0.1 3 force
execute positioned ~ ~1 ~ at @e[type=arrow,distance=..2.5] unless score @e[type=arrow,sort=nearest,limit=1] sea.oid = @s ac_entity_id as @e[type=arrow,sort=nearest,limit=1] at @s run kill @s


# Form
execute if entity @s[nbt=!{SelectedItem:{}},predicate=alloycore:player/sneak,tag=!ac_sneaked,x_rotation=90,tag=!sea.fruit.logia.flame.form] run function sea:fruit/system/logia/flameflame/form/enter
execute if entity @s[tag=sea.fruit.logia.flame.form] run function sea:fruit/system/logia/flameflame/form/main

