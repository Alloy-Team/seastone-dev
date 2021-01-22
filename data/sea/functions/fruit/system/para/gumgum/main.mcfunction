scoreboard players add @s sea.pf.g.ela 0
scoreboard players remove @s[scores={sea.pf.g.ela=1..}] sea.pf.g.ela 1

# Rocket
execute at @e[tag=sea.fruit.para.gum.launcher,type=armor_stand] if score @e[tag=sea.fruit.para.gum.launcher,sort=nearest,limit=1] sea.oid = @s ac_entity_id run tag @e[tag=sea.fruit.para.gum.launcher,sort=nearest,limit=1] add sea.rocketconfirm

execute at @e[tag=sea.rocketconfirm,distance=0.01..] run tp @s ~ ~ ~
execute if entity @e[tag=sea.rocketconfirm,distance=0.01..] run effect give @s slow_falling 1 1 true

tag @e[tag=sea.fruit.para.gum.launcher] remove sea.rocketconfirm



# Quick Elastic Charge
execute as @s[nbt=!{SelectedItem:{}}] if predicate alloycore:player/sprint run function sea:fruit/system/para/gumgum/charge/quick
# Long Elastic Charge
execute as @s[nbt=!{SelectedItem:{}}] if predicate alloycore:player/sneak run function sea:fruit/system/para/gumgum/charge/long
execute unless predicate alloycore:player/sneak at @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker] if score @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker,sort=nearest,limit=1] sea.oid = @s ac_entity_id run function sea:fruit/system/para/gumgum/charge/release
execute as @s[nbt={SelectedItem:{}}] at @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker] if score @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker,sort=nearest,limit=1] sea.oid = @s ac_entity_id run function sea:fruit/system/para/gumgum/charge/release

