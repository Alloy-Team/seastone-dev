scoreboard players set @a sea.fell 0
scoreboard players set @a sea.bow_used 0


execute as @a[scores={ac_death=1..}] at @s run function sea:main/death