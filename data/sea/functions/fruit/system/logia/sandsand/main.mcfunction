
# Nonhaki Immunity
execute as @e[distance=0.1..5] at @s unless score @s sea.w.tm matches 1.. unless predicate sea:player/seastone positioned ~ ~1 ~ positioned ^ ^ ^0.2 run function sea:fruit/system/logia/sandsand/faced

# Arrow Phase
execute if score @s sea.bow_used matches 1.. run scoreboard players operation @e[distance=..2,sort=nearest,limit=1,type=arrow] sea.oid = @s ac_entity_id
execute positioned ~ ~1 ~ at @e[type=arrow,distance=..2.5] unless score @e[type=arrow,sort=nearest,limit=1] sea.oid = @s ac_entity_id as @e[type=arrow,sort=nearest,limit=1] at @s run data merge entity @s {damage:0d}
execute positioned ~ ~1 ~ at @e[type=arrow,distance=..2.5] unless score @e[type=arrow,sort=nearest,limit=1] sea.oid = @s ac_entity_id as @e[type=arrow,sort=nearest,limit=1] at @s run particle falling_dust sand ~ ~ ~ 0.01 0.01 0.01 0 4 force
execute positioned ~ ~1 ~ at @e[type=arrow,distance=..2.5] unless score @e[type=arrow,sort=nearest,limit=1] sea.oid = @s ac_entity_id as @e[type=arrow,sort=nearest,limit=1] at @s run kill @s

# Form
execute unless block ~ ~-0.1 ~ #alloycore:voids if entity @s[nbt=!{SelectedItem:{}},predicate=alloycore:player/sneak,tag=!ac_sneaked,x_rotation=90,tag=!sea.fruit.logia.sand.form] run function sea:fruit/system/logia/sandsand/form/enter
execute if entity @s[tag=sea.fruit.logia.sand.form] run function sea:fruit/system/logia/sandsand/form/main

# Dehydration Hit
execute if entity @s[nbt=!{SelectedItem:{}}] if score @s ac_hits matches 1.. positioned ~ ~1 ~ positioned ^ ^ ^2 unless entity @s[dx=0] as @e[dx=0] at @s run effect give @s hunger 5 1 true
execute if entity @s[nbt=!{SelectedItem:{}}] if score @s ac_hits matches 1.. positioned ~ ~1 ~ positioned ^ ^ ^2 unless entity @s[dx=0] as @e[dx=0] at @s run effect give @s[type=!player] wither 5 1 true

# Quicksand
execute if entity @s[tag=!sea.fruit.logia.sand.form,nbt=!{SelectedItem:{}}] if predicate alloycore:player/sneak if predicate alloycore:player/sprint run function sea:fruit/system/logia/sandsand/sink