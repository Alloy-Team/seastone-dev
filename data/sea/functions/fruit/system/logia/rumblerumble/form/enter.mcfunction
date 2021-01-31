tag @s add sea.fruit.logia.rumble.form
execute if entity @s[gamemode=creative] run tag @s add sea.creative
gamemode spectator
particle minecraft:firework ~ ~1 ~ 0.2 0.5 0.2 0.1 30 force
particle minecraft:flash ~ ~1 ~ 0.2 0.5 0.2 1 10 force
tp @s ~ ~1 ~ ~ 50
playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..10] ~ ~ ~ 0.5 2

summon area_effect_cloud ~ ~ ~ {Tags:["sea.logiatp"],Duration:6000}
scoreboard players operation @e[type=area_effect_cloud,sort=nearest,limit=1,tag=sea.logiatp] sea.oid = @s ac_entity_id