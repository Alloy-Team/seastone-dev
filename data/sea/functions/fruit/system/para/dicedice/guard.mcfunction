playsound minecraft:item.trident.hit_ground ambient @a[distance=..10] ~ ~ ~ 1 0.75
execute positioned ~ ~1 ~ run particle minecraft:crit ~ ~ ~ 0.2 0.5 0.2 0.1 20 force
scoreboard players set @s sea.pf.d.cd 80
effect give @s strength 1 0 true
effect give @s resistance 1 255 false
