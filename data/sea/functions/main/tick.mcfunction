# >>> Devil Fruits

# >> Eating
# > If Holding Fruit
execute as @a[nbt={SelectedItem:{id:"minecraft:apple",Count:1b,tag:{Sea:{DevilFruit:1b}}}}] at @s run function sea:fruit/held/main
# > If Offholding Fruit
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:apple",Count:1b,tag:{Sea:{DevilFruit:1b}}}]}] at @s run function sea:fruit/held/main

# >> System
# > Base Noswim
execute as @a[tag=sea.fruit.user] at @s run function sea:fruit/system/base/main
