gamemode survival
execute at @s if entity @s[tag=sea.creative] run gamemode creative
tag @s remove sea.fruit.logia.sand.form
tag @s remove sea.creative

playsound minecraft:block.sand.hit ambient @s ~ ~ ~ 2 0

execute at @s at @e[tag=sea.logiatp] if score @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sea.logiatp] sea.oid = @s ac_entity_id run kill @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sea.logiatp]
