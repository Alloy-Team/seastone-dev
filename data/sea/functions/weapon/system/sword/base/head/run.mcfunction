execute as @s[nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",tag:{Sea:{Sword:1b,SwordType:{Katana:1b}}}}]}] run function sea:weapon/system/sword/base/head/katana
execute as @s[nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",tag:{Sea:{Sword:1b,SwordType:{SeastoneKatana:1b}}}}]}] run function sea:weapon/system/sword/base/head/seastone_katana

replaceitem entity @s container.9 air