# >>> Devil Fruits

# >> System
# > Base Noswim
execute as @a[tag=sea.fruit.user] at @s run function sea:fruit/system/base/main

# > Paramecia
# Spring Spring
execute as @e[tag=sea.fruit.para.spring.launcher] at @s run function sea:fruit/system/para/springspring/launch/main
execute as @a[tag=sea.fruit.user,tag=sea.fruit.para.spring.user] at @s run function sea:fruit/system/para/springspring/main
# Dice Dice
execute as @a[tag=sea.fruit.user,tag=sea.fruit.para.dice.user] at @s run function sea:fruit/system/para/dicedice/main
# Slip Slip
execute as @a[tag=sea.fruit.user,tag=sea.fruit.para.slip.user] at @s run function sea:fruit/system/para/slipslip/main



# > Logia
# Rumble Rumble
execute as @a[tag=sea.fruit.user,tag=sea.fruit.logia.rumble.user] at @s run function sea:fruit/system/logia/rumblerumble/main
execute as @e[tag=sea.ultrasmite] at @s run function sea:fruit/system/logia/rumblerumble/smiter
# Flame Flame
execute as @a[tag=sea.fruit.user,tag=sea.fruit.logia.flame.user] at @s run function sea:fruit/system/logia/flameflame/main




# >>> Weapons

# >> Mainhand Sword
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Sea:{Sword:1b}}}}] at @s run function sea:weapon/system/sword/base/main
execute as @a[nbt=!{Inventory:[{Slot:103b}]},nbt={Inventory:[{Slot:9b,tag:{Sea:{Sword:1b}}}]}] at @s run function sea:weapon/system/sword/base/head/run



# >>> Miscellanious

# >> Treasure Chests
# > Common Open
execute as @a[nbt={SelectedItem:{tag:{Sea:{TreasureChest:1b,Common:1b}}}},scores={ac_click_cs=1..}] at @s run function sea:misc/treasure/common/open