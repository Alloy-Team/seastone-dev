# >>> Devil Fruits

# >> System
execute as @s[tag=sea.fruit.user] at @s run function sea:fruit/system/base/main



# >>> Weapons

# >> Mainhand Sword
execute as @s[predicate=sea:player/sword_hand] at @s run function sea:weapon/system/sword/base/main
# >> Head Sword Assign (im dumb with predicates lmao so its still nbt)
#execute as @s[nbt=!{Inventory:[{Slot:103b}]},nbt={Inventory:[{Slot:9b,tag:{Sea:{Sword:1b}}}]}] at @s run function sea:weapon/system/sword/base/head/run



# >>> Miscellanious

# >> Treasure Chests
# > Common Open
execute as @s[predicate=sea:player/common_box] at @s run function sea:misc/treasure/common/open