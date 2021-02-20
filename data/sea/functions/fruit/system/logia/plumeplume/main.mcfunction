scoreboard players remove @s[scores={sea.lf.f.cd=1..}] sea.lf.f.cd 1
scoreboard players add @s sea.lf.f.cd 0

execute if block ~ ~ ~ fire run effect give @s strength 1 0 true

execute unless block ~ ~ ~ lava run effect give @s fire_resistance 1 0 true

# Nonhaki Immunity
execute as @e[distance=0.1..5] at @s positioned ~ ~1 ~ positioned ^ ^ ^0.2 run function sea:fruit/system/logia/plumeplume/faced

# Arrow Phase
execute if score @s sea.bow_used matches 1.. run scoreboard players operation @e[distance=..2,sort=nearest,limit=1,type=arrow] sea.oid = @s ac_entity_id
execute positioned ~ ~1 ~ at @e[type=arrow,distance=..2.5] unless score @e[type=arrow,sort=nearest,limit=1] sea.oid = @s ac_entity_id as @e[type=arrow,sort=nearest,limit=1] at @s run data merge entity @s {damage:0d}
execute positioned ~ ~1 ~ at @e[type=arrow,distance=..2.5] unless score @e[type=arrow,sort=nearest,limit=1] sea.oid = @s ac_entity_id as @e[type=arrow,sort=nearest,limit=1] at @s run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0 1 force
execute positioned ~ ~1 ~ at @e[type=arrow,distance=..2.5] unless score @e[type=arrow,sort=nearest,limit=1] sea.oid = @s ac_entity_id as @e[type=arrow,sort=nearest,limit=1] at @s run kill @s


# Form
execute if entity @s[tag=!sea.fruit.logia.plume.lform,nbt=!{SelectedItem:{}},predicate=alloycore:player/sneak,tag=!ac_sneaked,x_rotation=90,tag=!sea.fruit.logia.plume.form] run function sea:fruit/system/logia/plumeplume/form/enter
execute if entity @s[tag=sea.fruit.logia.plume.form] run function sea:fruit/system/logia/plumeplume/form/main

# Leg Form
execute if entity @s[tag=!sea.fruit.logia.plume.form,nbt=!{SelectedItem:{}},predicate=alloycore:player/sprint,predicate=alloycore:player/sneak,tag=!ac_sneaked,tag=!sea.fruit.logia.plume.lform] run function sea:fruit/system/logia/plumeplume/lform/enter
execute if entity @s[tag=sea.fruit.logia.plume.lform] run function sea:fruit/system/logia/plumeplume/lform/main
