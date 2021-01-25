# >>> Devil Fruits

# > If Holding Fruit
execute as @a[nbt={SelectedItem:{id:"minecraft:apple",tag:{Sea:{DevilFruit:1b}}}}] at @s run function sea:fruit/held/main
# > If Offholding Fruit
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:apple",tag:{Sea:{DevilFruit:1b}}}]}] at @s run function sea:fruit/held/main


# > Para
# Gum
execute as @a[scores={sea.apple_eat=1..,sea.heldfruit=11}] at @s run function sea:fruit/eat/para/gum_gum
# Spring
execute as @a[scores={sea.apple_eat=1..,sea.heldfruit=12}] at @s run function sea:fruit/eat/para/spring_spring

# > Zoan
# Human
execute as @a[scores={sea.apple_eat=1..,sea.heldfruit=21}] at @s run function sea:fruit/eat/zoan/human_human


# <><><>


# >> System
# > Base Noswim
execute as @a[tag=sea.fruit.user] at @s run function sea:fruit/system/base/main

# > Paramecia
# Gum Gum
execute as @e[tag=sea.fruit.para.gum.launcher] at @s run function sea:fruit/system/para/gumgum/rocket/main
execute as @e[tag=sea.fruit.para.gum.fist] at @s run function sea:fruit/system/para/gumgum/pistol/main
execute as @e[tag=sea.fruit.para.gum.rfist] at @s run function sea:fruit/system/para/gumgum/rifle/main
execute as @a[tag=sea.fruit.user,tag=sea.fruit.para.gum.user] at @s run function sea:fruit/system/para/gumgum/main
# Spring Spring
execute as @e[tag=sea.fruit.para.spring.launcher] at @s run function sea:fruit/system/para/springspring/launch/main
execute as @a[tag=sea.fruit.user,tag=sea.fruit.para.spring.user] at @s run function sea:fruit/system/para/springspring/main




# >>> Weapons

# >> Mainhand Sword
# > Shusui
execute as @a[scores={ac_click_cs=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Sea:{shusui:1b}}}}] at @s run function sea:weapon/system/sword/shusui/summon
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Sea:{shusui:1b}}}]}] if predicate alloycore:player/sneak at @s run scoreboard players set @s sea.sword.guard 2