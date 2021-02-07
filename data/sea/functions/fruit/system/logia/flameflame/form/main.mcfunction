execute at @s at @e[tag=sea.logiatp] if score @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sea.logiatp] sea.oid = @s ac_entity_id run tag @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sea.logiatp] add sea.logiacon
particle minecraft:flame ~ ~1 ~ 0.2 0.5 0.2 0.05 1 force

execute at @s unless entity @e[distance=..20,tag=sea.logiacon] at @e[tag=sea.logiacon] run tp ~ ~ ~

execute if block ~ ~ ~ water run function sea:fruit/system/logia/flameflame/form/exit
execute unless block ~ ~ ~ #alloycore:voids run function sea:fruit/system/logia/flameflame/form/exit
execute if entity @s[x_rotation=90] run function sea:fruit/system/logia/flameflame/form/exit

fill ~ ~ ~ ~ ~1 ~ fire replace air

execute at @s run tp @e[tag=sea.logiacon,distance=0.5..] ~ ~ ~ ~ ~
tag @e remove sea.logiacon