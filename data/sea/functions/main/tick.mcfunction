# >>> Player Tick
execute as @a[sort=arbitrary] at @s run function sea:main/player

# >>> Entity Tick
execute as @e[sort=arbitrary,type=!player,type=!item] at @s run function sea:main/entity
