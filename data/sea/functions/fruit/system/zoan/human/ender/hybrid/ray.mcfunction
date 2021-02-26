scoreboard players add $sea.raytime ac_temp 1

execute unless block ^ ^ ^0.5 #alloycore:voids run scoreboard players set $sea.raytime ac_temp 101


execute unless score $sea.raytime ac_temp matches 100.. positioned ^ ^ ^0.5 run function sea:fruit/system/zoan/human/ender/hybrid/ray

execute if score $sea.raytime ac_temp matches 101 run tp @s ^ ^ ^-0.5
execute if score $sea.raytime ac_temp matches 101 run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 0.25 1.1
execute if score $sea.raytime ac_temp matches 101 run particle minecraft:reverse_portal ~ ~1 ~ 0.2 0.5 0.2 0.01 8 force

scoreboard players reset $sea.raytime ac_temp
scoreboard players set @s sea.zf.h.cd 100