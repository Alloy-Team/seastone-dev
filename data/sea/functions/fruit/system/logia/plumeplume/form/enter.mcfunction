tag @s add sea.fruit.logia.plume.form
execute if entity @s[gamemode=creative] run tag @s add sea.creative
gamemode spectator
tp @s ~ ~1 ~ ~ 50
playsound minecraft:entity.player.attack.weak ambient @s ~ ~ ~ 2 0
playsound minecraft:entity.generic.extinguish_fire ambient @s ~ ~ ~ 0.2 0

summon area_effect_cloud ~ ~ ~ {Tags:["sea.logiatp"],Duration:6000}
scoreboard players operation @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sea.logiatp] sea.oid = @s ac_entity_id