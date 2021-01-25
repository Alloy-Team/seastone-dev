#execute unless block ~ ~-0.1 ~ #alloycore:voids run kill @s
execute if block ~ ~ ~ water run kill @s

execute store result score $sea.ymot ac_temp run data get entity @s Motion[1] 1000
execute if score $sea.ymot ac_temp matches -79 run kill @s
scoreboard players reset $sea.ymot ac_temp