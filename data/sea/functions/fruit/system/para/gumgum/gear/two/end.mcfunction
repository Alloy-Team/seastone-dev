playsound minecraft:item.honey_bottle.drink ambient @a[distance=..10] ~ ~ ~ 1 0
playsound minecraft:item.armor.equip_turtle ambient @a[distance=..10] ~ ~ ~ 0.5 0.7

particle minecraft:cloud ~ ~1 ~ 0.4 1 0.4 0 30 force

tag @s remove sea.fruit.para.gum.second

scoreboard players set @s sea.pf.g.sgc 800

effect give @s slowness 40 1 true
effect give @s nausea 15 1 true
effect give @s weakness 20 0 true