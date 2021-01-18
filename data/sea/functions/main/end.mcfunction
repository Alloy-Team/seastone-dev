execute if entity @s[nbt={SelectedItem:{id:"minecraft:apple"}},nbt=!{SelectedItem:{id:"minecraft:apple",tag:{Sea:{DevilFruit:1b}}}}] run scoreboard players set @s sea.heldfruit 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:apple"}]},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:apple",tag:{Sea:{DevilFruit:1b}}}]}] run scoreboard players set @s sea.heldfruit 0
scoreboard players set @a sea.apple_eat 0
