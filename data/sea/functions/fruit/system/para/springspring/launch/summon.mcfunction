summon armor_stand ~ ~ ~ {Invisible:1b,Small:0b,Tags:["sea.fruit.para.spring.launcher"]}
execute as @e[tag=sea.fruit.para.spring.launcher,sort=nearest,limit=1] at @s run tp @s ~ ~0.2 ~
scoreboard players operation @e[tag=sea.fruit.para.spring.launcher,sort=nearest,limit=1] sea.oid = @s ac_entity_id

execute if score @s sea.pf.s.rec matches 30..59 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^0.25 ^1 {Tags:["sea.fruit.para.spring.launcherm"]}
execute if score @s sea.pf.s.rec matches 60..89 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^0.5 ^2 {Tags:["sea.fruit.para.spring.launcherm"]}
execute if score @s sea.pf.s.rec matches 90..119 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^0.75 ^3 {Tags:["sea.fruit.para.spring.launcherm"]}
execute if score @s sea.pf.s.rec matches 120..149 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^1 ^4 {Tags:["sea.fruit.para.spring.launcherm"]}
execute if score @s sea.pf.s.rec matches 150..179 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^1.25 ^5 {Tags:["sea.fruit.para.spring.launcherm"]}
execute if score @s sea.pf.s.rec matches 180..209 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^1.5 ^6 {Tags:["sea.fruit.para.spring.launcherm"]}
execute if score @s sea.pf.s.rec matches 210..239 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^1.75 ^7 {Tags:["sea.fruit.para.spring.launcherm"]}
execute if score @s sea.pf.s.rec matches 240..269 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^2.0 ^8 {Tags:["sea.fruit.para.spring.launcherm"]}
execute if score @s sea.pf.s.rec matches 270..299 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^2.25 ^9 {Tags:["sea.fruit.para.spring.launcherm"]}




execute at @s as @e[tag=sea.fruit.para.spring.launcher,sort=nearest,limit=1] at @s run data modify entity @s Motion set from entity @e[tag=sea.fruit.para.spring.launcherm,sort=nearest,limit=1] Pos
kill @e[tag=sea.fruit.para.spring.launcherm]