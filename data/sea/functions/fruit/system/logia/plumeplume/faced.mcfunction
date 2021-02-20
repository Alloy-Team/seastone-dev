scoreboard players add $sea.raytime ac_temp 1

execute unless entity @s[dx=0] if entity @e[tag=sea.fruit.logia.plume.user,dx=0] run tag @s add sea.rayhit
execute unless entity @s[dx=0] unless entity @s[nbt={SelectedItem:{tag:{Sea:{Seastone:1b}}}}] unless entity @s[nbt={HandItems:[{tag:{Sea:{Seastone:1b}}}]}] if entity @e[tag=sea.fruit.logia.plume.user,dx=0] run tag @s add sea.facing.plume
execute unless entity @s[dx=0] if entity @e[tag=!sea.fruit.logia.plume.user,dx=0] run tag @s add sea.rayhit
execute unless entity @s[dx=0] if entity @s[nbt={SelectedItem:{tag:{Sea:{Seastone:1b}}}}] if entity @e[tag=sea.fruit.logia.plume.user,dx=0] 


execute unless score $sea.raytime ac_temp matches 40.. positioned ^ ^ ^0.1 unless entity @s[tag=sea.rayhit] run function sea:fruit/system/logia/plumeplume/faced
scoreboard players reset $sea.raytime ac_temp

execute if entity @s[tag=sea.facing.plume] run effect give @s weakness 1 255 true
execute if entity @s[tag=sea.facing.plume] run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0 1 force @s

execute as @s[type=!player] if predicate sea:fruit/logia/plume/faced run effect give @s weakness 1 255 true

tag @s remove sea.rayhit
tag @s remove sea.facing.plume