scoreboard players add @s[scores={sea.pf.g.ela=..98}] sea.pf.g.ela 2

execute if score @s[tag=!sea.fistactive] sea.pf.g.ela matches 98 run playsound minecraft:item.crossbow.quick_charge_1 ambient @s ~ ~ ~ 1 1.5
execute if score @s[tag=!sea.fistactive] sea.pf.g.ela matches 99..349 if predicate alloycore:player/sneak run function sea:fruit/system/para/gumgum/pistol/summon
execute if score @s[tag=!sea.fistactive] sea.pf.g.ela matches 350.. if predicate alloycore:player/sneak run function sea:fruit/system/para/gumgum/rifle/summon