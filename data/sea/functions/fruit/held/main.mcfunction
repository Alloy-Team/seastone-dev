# >>> Paramecia

# >> Gum Gum
# > Held
execute as @s[nbt={SelectedItem:{id:"minecraft:apple",tag:{Sea:{DevilFruit:1b,Fruit:{Para:{GumGum:1b}}}}}}] run scoreboard players set @s sea.heldfruit 11
# > Offheld
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:apple",tag:{Sea:{DevilFruit:1b,Fruit:{Para:{GumGum:1b}}}}}]}] run scoreboard players set @s sea.heldfruit 11


# >>> Zoan

# >> Human Human
# > Held
execute as @s[nbt={SelectedItem:{id:"minecraft:apple",tag:{Sea:{DevilFruit:1b,Fruit:{Zoan:{HumanHuman:1b}}}}}}] run scoreboard players set @s sea.heldfruit 21
# > Offheld
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:apple",tag:{Sea:{DevilFruit:1b,Fruit:{Zoan:{HumanHuman:1b}}}}}]}] run scoreboard players set @s sea.heldfruit 21





