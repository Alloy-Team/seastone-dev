scoreboard players add @s sea.zf.h.cd 0
scoreboard players remove @s[scores={sea.zf.h.cd=1..}] sea.zf.h.cd 1

particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.7 0.4 0.01 1 force
effect give @s hunger 1 0 true


# Dodge
execute if entity @e[type=arrow,distance=..4,nbt=!{inGround:1b}] if score @s sea.zf.h.cd matches ..0 run function sea:fruit/system/zoan/human/ender/hybrid/dodge

# Teleport
execute if entity @s[x_rotation=..87,scores={sea.zf.h.cd=..0},predicate=alloycore:player/sneak,predicate=alloycore:player/sprint,tag=!ac_sneaked] positioned ~ ~1 ~ positioned ^ ^ ^1 run function sea:fruit/system/zoan/human/ender/hybrid/ray

# Water Damage
execute unless entity @s[gamemode=creative] if block ~ ~ ~ #sea:water run tag @s add sea.secdmg
execute unless entity @s[gamemode=creative] if block ~ ~ ~ #sea:water run scoreboard players set @s custom_damage 3

execute unless entity @s[gamemode=creative] if predicate sea:player/raining positioned ~ ~ ~ run function sea:fruit/system/zoan/human/ender/toggle