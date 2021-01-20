scoreboard players add @s sea.pf.g.ela 0
scoreboard players remove @s[scores={sea.pf.g.ela=1..}] sea.pf.g.ela 1


# Quick Elastic Charge
execute if predicate alloycore:player/sprint run function sea:fruit/system/para/gumgum/charge/quick
# Long Elastic Charge
execute if predicate alloycore:player/sneak run function sea:fruit/system/para/gumgum/charge/long
execute unless predicate alloycore:player/sneak at @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker] if score @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker,sort=nearest,limit=1] sea.oid = @s ac_entity_id run function sea:fruit/system/para/gumgum/charge/release