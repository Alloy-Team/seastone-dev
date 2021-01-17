summon armor_stand ~ ~ ~ {Tags:["sea.fruit.sinker"],Invisible:1b,Small:1b}
scoreboard players operation @e[type=armor_stand,tag=sea.fruit.sinker,sort=nearest,limit=1] sea.sink_id = @s ac_entity_id
execute store result entity @e[type=armor_stand,tag=sea.fruit.sinker,sort=nearest,limit=1] Motion[0] double 1 run data get entity @s Motion[0]
execute store result entity @e[type=armor_stand,tag=sea.fruit.sinker,sort=nearest,limit=1] Motion[1] double 1 run data get entity @s Motion[1]
execute store result entity @e[type=armor_stand,tag=sea.fruit.sinker,sort=nearest,limit=1] Motion[2] double 1 run data get entity @s Motion[2]

