gamemode survival
execute at @s if entity @s[tag=sea.creative] run gamemode creative
tag @s remove sea.fruit.logia.flame.form
tag @s remove sea.creative

particle flame ~ ~1 ~ 0.2 0.5 0.2 0.2 30 force
particle minecraft:flash ~ ~1 ~ 0.2 0.5 0.2 1 10 force
playsound minecraft:entity.ghast.shoot ambient @s ~ ~ ~ 1 0.75

execute at @s at @e[tag=sea.logiatp] if score @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sea.logiatp] sea.oid = @s ac_entity_id run kill @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sea.logiatp]
