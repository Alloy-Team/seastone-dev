summon armor_stand ~ ~ ~ {Tags:["sea.fruit.sinker"],Invisible:1b,Small:1b}
scoreboard players operation @e[type=armor_stand,tag=sea.fruit.sinker,sort=nearest,limit=1] sea.sink_id = @s ac_entity_id

execute store result score $sea.motion ac_temp run data get entity @s Motion[1] 1000

execute if score $sea.motion ac_temp matches ..-500 store result entity @e[type=armor_stand,tag=sea.fruit.sinker,sort=nearest,limit=1] Motion[1] double 1 run data get entity @s Motion[1]

scoreboard players reset $sea.motion ac_temp