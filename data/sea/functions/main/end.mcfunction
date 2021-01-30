scoreboard players set @a[scores={sea.apple_eat=1..}] sea.heldfruit 0
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:apple"}},nbt=!{SelectedItem:{tag:{Sea:{DevilFruit:1b}}}}] sea.heldfruit 0
scoreboard players set @a sea.apple_eat 0

execute as @a[scores={ac_death=1..}] at @s run function sea:main/death