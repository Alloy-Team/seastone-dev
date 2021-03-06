playsound minecraft:entity.player.attack.sweep ambient @a[distance=..10] ~ ~ ~ 1.5 1.25
playsound minecraft:item.trident.hit_ground ambient @a[distance=..10] ~ ~ ~ 0.5 1.25


# Attack
execute positioned ~ ~1 ~ run particle minecraft:sweep_attack ^ ^ ^2 0 0 0 1 1 force
execute positioned ~ ~1 ~ positioned ^ ^ ^2 unless entity @s[dx=0] unless entity @a[dx=0,gamemode=spectator] unless entity @a[gamemode=creative,dx=0] run scoreboard players set @e[dx=0,limit=1,sort=nearest] custom_damage 5

execute if score @s sea.sw.c matches 2.. positioned ~ ~0.7 ~ run particle minecraft:sweep_attack ^ ^ ^2 0 0 0 1 1 force
execute if score @s sea.sw.c matches 2.. positioned ~ ~0.7 ~ positioned ^ ^ ^2 unless entity @s[dx=0] unless entity @a[dx=0,gamemode=spectator] unless entity @a[gamemode=creative,dx=0] run scoreboard players add @e[dx=0,limit=1,sort=nearest] custom_damage 3

execute if score @s sea.sw.c matches 3.. positioned ~ ~1.3 ~ run particle minecraft:sweep_attack ^ ^ ^2 0 0 0 1 1 force
execute if score @s sea.sw.c matches 3.. positioned ~ ~1.3 ~ positioned ^ ^ ^2 unless entity @s[dx=0] unless entity @a[dx=0,gamemode=spectator] unless entity @a[gamemode=creative,dx=0] run scoreboard players add @e[dx=0,limit=1,sort=nearest] custom_damage 3

execute positioned ~ ~1 ~ positioned ^ ^ ^2 unless entity @s[dx=0] unless entity @a[dx=0,gamemode=spectator] unless entity @a[gamemode=creative,dx=0] as @e[dx=0,limit=1,sort=nearest] at @s run function custom_damage:apply
execute positioned ~ ~1 ~ positioned ^ ^ ^2 unless entity @s[dx=0] unless entity @a[dx=0,gamemode=spectator] unless entity @a[gamemode=creative,dx=0] as @e[dx=0,limit=1,sort=nearest,tag=sea.fruit.user] at @s run effect give @s slowness 3 0 true
execute positioned ~ ~1 ~ positioned ^ ^ ^2 unless entity @s[dx=0] unless entity @a[dx=0,gamemode=spectator] unless entity @a[gamemode=creative,dx=0] as @e[dx=0,limit=1,sort=nearest,tag=sea.fruit.user] at @s run effect give @s weakness 1 0 true

# End
tag @e remove sea.logia
scoreboard players add @s sea.sw.g.cd 30