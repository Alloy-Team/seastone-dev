tag @s add sea.fruit.logia.sand.form
execute if entity @s[gamemode=creative] run tag @s add sea.creative
gamemode spectator
playsound minecraft:block.sand.hit ambient @s ~ ~ ~ 2 0
tp @s ~ ~-1 ~

summon area_effect_cloud ~ ~ ~ {Tags:["sea.logiatp"],Duration:6000}
scoreboard players operation @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sea.logiatp] sea.oid = @s ac_entity_id