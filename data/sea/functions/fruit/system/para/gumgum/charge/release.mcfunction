kill @e[type=armor_stand,tag=sea.fruit.para.gum.sneaker,sort=nearest,limit=1]
execute at @s if entity @s[tag=sea.longcharge.2] run playsound minecraft:item.crossbow.shoot ambient @a[distance=..10] ~ ~ ~ 1 2

execute at @s if entity @s[tag=sea.longcharge.2] run scoreboard players set @s sea.pf.g.ela 200
execute at @s if entity @s[tag=sea.longcharge.4] run scoreboard players set @s sea.pf.g.ela 400
execute at @s if entity @s[tag=sea.longcharge.6] run scoreboard players set @s sea.pf.g.ela 600
execute at @s if entity @s[tag=sea.longcharge.8] run scoreboard players set @s sea.pf.g.ela 800
execute at @s if entity @s[tag=sea.longcharge.10] run scoreboard players set @s sea.pf.g.ela 1000

tag @s remove sea.longcharge.2
tag @s remove sea.longcharge.4
tag @s remove sea.longcharge.6
tag @s remove sea.longcharge.8
tag @s remove sea.longcharge.10