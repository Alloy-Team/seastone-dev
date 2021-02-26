playsound minecraft:item.crossbow.hit ambient @s ~ ~ ~ 0.5 0.75
playsound minecraft:block.piston.contract ambient @s ~ ~ ~ 1 2

execute unless block ~ ~-0.001 ~ #alloycore:voids run effect give @s levitation 1 50 true

scoreboard players set @s sea.pf.s.tm 3