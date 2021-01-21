execute at @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker] if score @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker,sort=nearest,limit=1] sea.oid = @s ac_entity_id run tag @s add sea.longconfirm
execute at @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker] if score @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker,sort=nearest,limit=1] sea.oid = @s ac_entity_id run tag @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker,sort=nearest,limit=1] add sea.longentity

execute as @e[tag=sea.longentity,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:110301}}]}] at @s unless entity @a[tag=sea.longconfirm,distance=..1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:110301}}]}

execute at @e[tag=sea.longentity] facing entity @s feet as @e[tag=sea.longentity] run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=sea.longentity] at @s facing entity @a[distance=1..,tag=sea.longconfirm] feet positioned ^ ^ ^0.5 run function sea:fruit/system/para/gumgum/charge/ray

execute if entity @e[tag=sea.longentity,distance=2..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.2] run playsound minecraft:item.crossbow.quick_charge_1 ambient @s ~ ~ ~ 0.5 1.6
execute if entity @e[tag=sea.longentity,distance=2..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.2] run tag @s add sea.longcharge.2
execute if entity @e[tag=sea.longentity,distance=5..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.4] run playsound minecraft:item.crossbow.quick_charge_1 ambient @s ~ ~ ~ 0.5 1.7
execute if entity @e[tag=sea.longentity,distance=5..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.4] run tag @s add sea.longcharge.4
execute if entity @e[tag=sea.longentity,distance=9..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.6] run playsound minecraft:item.crossbow.quick_charge_1 ambient @s ~ ~ ~ 0.5 1.8
execute if entity @e[tag=sea.longentity,distance=9..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.6] run tag @s add sea.longcharge.6
execute if entity @e[tag=sea.longentity,distance=13..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.8] run playsound minecraft:item.crossbow.quick_charge_1 ambient @s ~ ~ ~ 0.5 1.9
execute if entity @e[tag=sea.longentity,distance=13..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.8] run tag @s add sea.longcharge.8
execute if entity @e[tag=sea.longentity,distance=18..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.10] run playsound minecraft:item.crossbow.quick_charge_1 ambient @s ~ ~ ~ 0.5 2
execute if entity @e[tag=sea.longentity,distance=18..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.10] run tag @s add sea.longcharge.10

execute as @s at @s if entity @s[tag=sea.longcharge.6,tag=!sea.rocketrun] if score @s ac_jumped matches 1.. run playsound minecraft:item.crossbow.quick_charge_1 ambient @s ~ ~ ~ 2 0.75
execute as @s at @s if entity @s[tag=sea.longcharge.6,tag=!sea.rocketrun] if score @s ac_jumped matches 1.. run tag @s add sea.rocketrun


execute unless entity @s[tag=sea.longconfirm] unless block ~ ~-0.1 ~ #alloycore:voids run function sea:fruit/system/para/gumgum/charge/summon
tag @s remove sea.longconfirm
tag @e remove sea.longentity