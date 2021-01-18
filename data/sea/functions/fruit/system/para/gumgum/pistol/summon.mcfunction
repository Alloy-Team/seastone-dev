summon armor_stand ~ ~ ~ {Tags:["sea.fruit.para.gum.fist"],Invisible:1b,Marker:1b}
scoreboard players operation @e[sort=nearest,limit=1,type=armor_stand,tag=sea.fruit.para.gum.fist] sea.oid = @s ac_entity_id
tp @e[sort=nearest,limit=1,type=armor_stand,tag=sea.fruit.para.gum.fist] ~ ~1 ~ ~ ~
playsound minecraft:item.crossbow.shoot ambient @a[distance=..10] ~ ~ ~ 1 2
scoreboard players set @s sea.pf.g.ela 0