execute if block ~ ~ ~ #sea:water run scoreboard players add @s[scores={sea.w.tm=..60}] sea.w.tm 6
execute unless block ~ ~ ~ #sea:water run scoreboard players remove @s[scores={sea.w.tm=1..}] sea.w.tm 1
scoreboard players add @s sea.w.tm 0

execute unless entity @s[gamemode=spectator] unless block ~ ~ ~ #sea:water if score @s sea.w.tm matches 1.. run particle minecraft:falling_water ~ ~1 ~ 0.2 0.5 0.2 1 10 force
execute unless entity @s[gamemode=spectator] unless block ~ ~ ~ #sea:water if score @s sea.w.tm matches 29.. run particle minecraft:falling_water ~ ~1 ~ 0.2 0.5 0.2 1 10 force
execute unless entity @s[gamemode=spectator] unless block ~ ~ ~ #sea:water if score @s sea.w.tm matches 44.. run particle minecraft:falling_water ~ ~1 ~ 0.2 0.5 0.2 1 10 force
execute unless entity @s[gamemode=spectator] unless block ~ ~ ~ #sea:water if score @s sea.w.tm matches 59.. run particle minecraft:falling_water ~ ~1 ~ 0.2 0.5 0.2 1 10 force


