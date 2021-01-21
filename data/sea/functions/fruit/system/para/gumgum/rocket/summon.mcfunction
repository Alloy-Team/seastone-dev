summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Tags:["sea.fruit.para.gum.launcher"]}
execute as @e[tag=sea.fruit.para.gum.launcher,sort=nearest,limit=1] at @s run tp @s ~ ~0.2 ~
scoreboard players operation @e[tag=sea.fruit.para.gum.launcher,sort=nearest,limit=1] sea.oid = @s ac_entity_id

execute positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^1 ^4 {Tags:["sea.fruit.para.gum.launcherm"]}
execute at @s as @e[tag=sea.fruit.para.gum.launcher,sort=nearest,limit=1] at @s run data modify entity @s Motion set from entity @e[tag=sea.fruit.para.gum.launcherm,sort=nearest,limit=1] Pos
kill @e[tag=sea.fruit.para.gum.launcherm]