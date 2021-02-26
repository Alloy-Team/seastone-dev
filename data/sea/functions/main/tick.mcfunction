# >>> Player Tick
execute as @a at @s run function sea:main/player

# >>> Entity Tick
execute as @e at @s run function sea:main/player


# >>> Weapons

# >> Mainhand Sword
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Sea:{Sword:1b}}}}] at @s run function sea:weapon/system/sword/base/main
execute as @a[nbt=!{Inventory:[{Slot:103b}]},nbt={Inventory:[{Slot:9b,tag:{Sea:{Sword:1b}}}]}] at @s run function sea:weapon/system/sword/base/head/run



# >>> Miscellanious

# >> Treasure Chests
# > Common Open
execute as @a[nbt={SelectedItem:{tag:{Sea:{TreasureChest:1b,Common:1b}}}},scores={ac_click_cs=1..}] at @s run function sea:misc/treasure/common/open