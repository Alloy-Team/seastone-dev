execute at @s at @e[tag=sea.logiatp] if score @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sea.logiatp] sea.oid = @s ac_entity_id run tag @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sea.logiatp] add sea.logiacon

function sea:fruit/system/logia/sandsand/form/particle
execute unless block ~ ~ ~ #alloycore:voids unless block ~ ~1 ~ #alloycore:voids run particle falling_dust sand ~ ~1 ~ 0.3 0.3 0.3 1 2 force


execute at @s unless entity @e[distance=..20,tag=sea.logiacon] at @e[tag=sea.logiacon] run tp ~ ~ ~

execute at @s if block ~ ~ ~ water run function sea:fruit/system/logia/sandsand/form/exit
execute at @s if block ~ ~ ~ #alloycore:voids run function sea:fruit/system/logia/sandsand/form/exit
execute at @s if block ~ ~ ~ #sea:electric run function sea:fruit/system/logia/sandsand/form/exit

execute at @s run tp @e[tag=sea.logiacon,distance=0.5..] ~ ~ ~ ~ ~
tag @e remove sea.logiacon