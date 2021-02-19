particle minecraft:witch ~ ~1 ~ 0.2 0.5 0.2 0 10 force
playsound minecraft:entity.illusioner.cast_spell ambient @s ~ ~ ~ 1 2

execute if entity @s[tag=sea.fruit.user,gamemode=!creative] run kill @s

tag @s add sea.fruit.zoan.human.vanilla
tag @s add sea.fruit.user
scoreboard players set $sea.zf.human.vanilla sea.fruit.av 1

advancement revoke @s only sea:fruit/zoan/human_human