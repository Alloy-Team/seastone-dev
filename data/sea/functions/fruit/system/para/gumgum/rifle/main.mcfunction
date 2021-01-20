execute at @a if score @p ac_entity_id = @s sea.oid run tag @p add sea.fistowner
tag @s add sea.fistowned
tag @a[tag=sea.fistowner] add sea.fistactive

execute as @a[tag=sea.fistowner,distance=3..] at @s positioned ~ ~1 ~ facing entity @e[tag=sea.fistowned] feet run function sea:fruit/system/para/gumgum/rifle/ray

execute at @s if entity @s[tag=!sea.fistrev] rotated as @a[tag=sea.fistowner] positioned as @s unless block ~ ~ ~ water if block ~ ~ ~ #alloycore:voids run tp @s ^ ^ ^1 ~ ~
execute at @s if entity @s[tag=!sea.fistrev] rotated as @a[tag=sea.fistowner] positioned as @s unless block ~ ~ ~ water if block ~ ~ ~ #alloycore:voids run tp @s ^ ^ ^1 ~ ~

execute at @s if entity @s[tag=!sea.fistrev] rotated as @a[tag=sea.fistowner] positioned as @s if block ~ ~ ~ water run tp @s ^ ^ ^0.5 ~ ~


execute at @s if entity @s[tag=sea.fistrev] facing entity @a[tag=sea.fistowner] feet rotated ~ ~-20 positioned as @s unless block ~ ~ ~ water if block ^ ^ ^1 #alloycore:voids run tp @s ^ ^ ^0.5
execute at @s if entity @s[tag=sea.fistrev] facing entity @a[tag=sea.fistowner] feet rotated ~ ~-20 positioned as @s unless block ~ ~ ~ water if block ^ ^ ^1 #alloycore:voids run tp @s ^ ^ ^0.5
execute at @s if entity @s[tag=sea.fistrev] facing entity @a[tag=sea.fistowner] feet rotated ~ ~-20 positioned as @s unless block ~ ~ ~ water if block ^ ^ ^1 #alloycore:voids run tp @s ^ ^ ^0.5
execute at @s if entity @s[tag=sea.fistrev] facing entity @a[tag=sea.fistowner] feet rotated ~ ~-20 positioned as @s unless block ~ ~ ~ water if block ^ ^ ^1 #alloycore:voids run tp @s ^ ^ ^0.5
execute at @s if entity @s[tag=sea.fistrev] facing entity @a[tag=sea.fistowner] feet rotated ~ ~-20 positioned as @s unless block ~ ~ ~ water if block ^ ^ ^1 #alloycore:voids run tp @s ^ ^ ^0.5

execute at @s if entity @s[tag=sea.fistrev] facing entity @a[tag=sea.fistowner] feet rotated ~ ~-20 positioned as @s if block ~ ~ ~ water if block ^ ^ ^1 #alloycore:voids run tp @s ^ ^ ^0.5
execute at @s if entity @s[tag=sea.fistrev] facing entity @a[tag=sea.fistowner] feet rotated ~ ~-20 positioned as @s if block ~ ~ ~ water if block ^ ^ ^1 #alloycore:voids run tp @s ^ ^ ^0.5


execute if entity @a[distance=50..,tag=sea.fistowner] rotated as @a[tag=sea.fistowner] positioned as @s run playsound minecraft:item.crossbow.quick_charge_3 ambient @a[distance=..20] ~ ~ ~ 2 1.5
execute if entity @a[distance=50..,tag=sea.fistowner] rotated as @a[tag=sea.fistowner] positioned as @s run tag @s[tag=!sea.fistrev] add sea.fistrev


execute if entity @s[tag=sea.fistrev] if entity @a[tag=sea.fistowner,dx=0] run playsound minecraft:item.crossbow.shoot ambient @a[distance=..10] ~ ~ ~ 1 1.85
execute if entity @s[tag=sea.fistrev] if entity @a[tag=sea.fistowner,dx=0] run tag @e[tag=sea.fistowner] remove sea.fistactive
execute if entity @s[tag=sea.fistrev] if entity @a[tag=sea.fistowner,dx=0] run kill @s


execute if entity @s[tag=!sea.fistrev] unless block ~ ~ ~ #alloycore:voids run tag @s add sea.fistrev
execute unless block ~ ~ ~ #alloycore:voids unless block ~ ~ ~ #alloycore:unbreakable run setblock ~ ~ ~ air destroy

execute if entity @s[tag=!sea.fistrev] if entity @e[type=!#alloycore:nonliving,dx=0,tag=!sea.fistowner] as @e[type=!#alloycore:nonliving,dx=0] at @s run function sea:fruit/system/para/gumgum/rifle/dmg


tag @s remove sea.fistowned
tag @a remove sea.fistowner
execute at @s if entity @s[nbt=!{ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:110301}}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:110301}}]}
