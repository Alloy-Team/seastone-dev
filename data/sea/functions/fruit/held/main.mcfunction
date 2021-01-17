# > Remove All DFHeld Tags
tag @s remove sea.fruit.zoan.human.held



# >>> Zoan

# >> Human Human
# > Held
execute as @s[nbt={SelectedItem:{id:"minecraft:apple",Count:1b,tag:{Sea:{DevilFruit:1b,Fruit:{Zoan:{HumanHuman:1b}}}}}}] run tag @s add sea.fruit.zoan.human.held
# > Offheld
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:apple",Count:1b,tag:{Sea:{DevilFruit:1b,Fruit:{Zoan:{HumanHuman:1b}}}}}]}] run tag @s add sea.fruit.zoan.human.held
# > Eaten
execute as @s[scores={sea.apple_eat=1..},tag=sea.fruit.zoan.human.held] run function sea:fruit/eat/zoan/human_human
