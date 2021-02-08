scoreboard players add @s sea.sw.g.cd 0
scoreboard players remove @s[scores={sea.sw.g.cd=1..}] sea.sw.g.cd 1
scoreboard players remove @s[scores={sea.sw.g.tm=1..}] sea.sw.g.tm 1
effect clear @s[scores={sea.sw.g.tm=1}] resistance
effect clear @s[scores={sea.sw.g.tm=1}] strength
scoreboard players set @s sea.sw.c 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Sea:{Sword:1b}}}]}] run scoreboard players add @s sea.sw.c 1
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Sea:{Sword:1b}}}]}] run scoreboard players add @s sea.sw.c 1

# > Parry
execute if entity @s[scores={ac_click_cs=1..,sea.sw.g.cd=0},predicate=!alloycore:player/sneak] unless entity @s[predicate=alloycore:player/sprint,nbt={Inventory:[{Slot:103b,tag:{Sea:{Sword:1b}}}]}] run function sea:weapon/system/sword/base/guard


# > Sword Main
# Katana
execute if entity @s[nbt={SelectedItem:{tag:{Sea:{Sword:1b,SwordType:{Katana:1b}}}}}] run function sea:weapon/system/sword/katana/main
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Sea:{Sword:1b,SwordType:{Katana:1b}}}}]}] run function sea:weapon/system/sword/katana/hmain
# Seastone Katana
execute if entity @s[nbt={SelectedItem:{tag:{Sea:{Sword:1b,SwordType:{SeastoneKatana:1b}}}}}] run function sea:weapon/system/sword/seastone_katana/main
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Sea:{Sword:1b,SwordType:{SeastoneKatana:1b}}}}]}] run function sea:weapon/system/sword/seastone_katana/hmain


