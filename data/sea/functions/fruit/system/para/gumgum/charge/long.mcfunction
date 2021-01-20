execute at @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker] if score @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker,sort=nearest,limit=1] sea.oid = @s ac_entity_id run tag @s add sea.longconfirm
execute at @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker] if score @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker,sort=nearest,limit=1] sea.oid = @s ac_entity_id run tag @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker,sort=nearest,limit=1] add sea.longentity

execute if entity @e[tag=sea.longentity,distance=2..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.2] run playsound minecraft:item.crossbow.quick_charge_1 ambient @s ~ ~ ~ 0.5 1.6
execute if entity @e[tag=sea.longentity,distance=2..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.2] run tag @s add sea.longcharge.2
execute if entity @e[tag=sea.longentity,distance=5..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.4] run playsound minecraft:item.crossbow.quick_charge_1 ambient @s ~ ~ ~ 0.5 1.7
execute if entity @e[tag=sea.longentity,distance=5..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.4] run tag @s add sea.longcharge.4
execute if entity @e[tag=sea.longentity,distance=8..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.6] run playsound minecraft:item.crossbow.quick_charge_1 ambient @s ~ ~ ~ 0.5 1.8
execute if entity @e[tag=sea.longentity,distance=8..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.6] run tag @s add sea.longcharge.6
execute if entity @e[tag=sea.longentity,distance=11..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.8] run playsound minecraft:item.crossbow.quick_charge_1 ambient @s ~ ~ ~ 0.5 1.9
execute if entity @e[tag=sea.longentity,distance=11..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.8] run tag @s add sea.longcharge.8
execute if entity @e[tag=sea.longentity,distance=15..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.10] run playsound minecraft:item.crossbow.quick_charge_1 ambient @s ~ ~ ~ 0.5 2
execute if entity @e[tag=sea.longentity,distance=15..] if entity @s[tag=sea.longconfirm,tag=!sea.longcharge.10] run tag @s add sea.longcharge.10

execute unless entity @s[tag=sea.longconfirm] run function sea:fruit/system/para/gumgum/charge/summon
tag @s remove sea.longconfirm
tag @e remove sea.longentity