effect give @s resistance 1 255 false
scoreboard players set @s sea.sw.g.tm 6
playsound minecraft:item.trident.hit_ground ambient @a[distance=..10] ~ ~ ~ 1 0.75
execute positioned ~ ~1 ~ run particle minecraft:crit ^ ^ ^2 0.2 0.2 0.2 0.1 10 force
scoreboard players set @s sea.sw.g.cd 60
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Sea:{Sword:1b}}}]}] run scoreboard players add @s sea.sw.g.tm 5
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Sea:{Sword:1b}}}]}] run scoreboard players remove @s sea.sw.g.cd 10

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Sea:{Sword:1b}}}]}] run scoreboard players add @s sea.sw.g.tm 5
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Sea:{Sword:1b}}}]}] run scoreboard players remove @s sea.sw.g.cd 10
