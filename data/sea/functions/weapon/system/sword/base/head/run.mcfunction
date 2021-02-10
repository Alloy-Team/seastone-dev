execute as @s[nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",tag:{Sea:{Sword:1b,SwordType:{Katana:1b}}}}]}] run function sea:weapon/system/sword/base/head/katana
execute as @s[nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",tag:{Sea:{Sword:1b,SwordType:{SeastoneKatana:1b}}}}]}] run function sea:weapon/system/sword/base/head/seastone_katana
execute as @s[nbt={Inventory:[{Slot:9b,id:"minecraft:carrot_on_a_stick",tag:{Sea:{Sword:1b,SwordType:{WadoIchimunji:1b}}}}]}] run function sea:weapon/system/sword/base/head/wado_ichimunji


execute as @s[nbt={Inventory:[{Slot:9b,id:"minecraft:wooden_sword",tag:{_aml:{id:"upvote_sword"}}}]}] run function sea:weapon/system/sword/base/head/upvote

replaceitem entity @s container.9 air