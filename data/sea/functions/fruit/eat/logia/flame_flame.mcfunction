particle minecraft:witch ~ ~1 ~ 0.2 0.5 0.2 0 10 force
playsound minecraft:entity.illusioner.cast_spell ambient @s ~ ~ ~ 1 2

execute if entity @s[tag=sea.fruit.user,gamemode=!creative] run kill @s

tag @s add sea.fruit.logia.flame.user
tag @s add sea.fruit.user
execute if score $sea.lf.flame sea.fruit.av matches 1 run tag @s[gamemode=!creative] remove sea.fruit.user
execute if score $sea.lf.flame sea.fruit.av matches 1 run tag @s[gamemode=!creative] remove sea.fruit.logia.flame.user
scoreboard players set $sea.lf.flame sea.fruit.av 1

advancement revoke @s only sea:fruit/logia/flame_flame