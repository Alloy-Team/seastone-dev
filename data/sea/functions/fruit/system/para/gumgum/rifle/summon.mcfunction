summon armor_stand ~ ~ ~ {Tags:["sea.fruit.para.gum.rfist"],Invisible:1b,Marker:1b}
scoreboard players operation @e[sort=nearest,limit=1,type=armor_stand,tag=sea.fruit.para.gum.rfist] sea.oid = @s ac_entity_id
tp @e[sort=nearest,limit=1,type=armor_stand,tag=sea.fruit.para.gum.rfist] ~ ~1 ~ ~ ~
playsound minecraft:item.crossbow.shoot ambient @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:item.crossbow.hit ambient @a[distance=..20] ~ ~ ~ 0.5 0
scoreboard players set @s sea.pf.g.ela 0