scoreboard players add @s sea.zf.tgl 0
execute store result score @s sea.zf.tgl if score @s sea.zf.tgl matches 0

playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 0.25 2
particle minecraft:reverse_portal ~ ~1 ~ 0.2 0.5 0.2 0.01 10 force