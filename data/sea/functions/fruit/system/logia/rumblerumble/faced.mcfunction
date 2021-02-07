scoreboard players add $sea.raytime ac_temp 1

execute unless entity @s[dx=0] if entity @e[tag=sea.fruit.logia.rumble.user,dx=0] run tag @s add sea.rayhit
execute unless entity @s[dx=0] unless entity @s[tag=sea.fruit.para.gum.user] unless entity @s[nbt={SelectedItem:{tag:{Sea:{Seastone:1b}}}}] unless entity @s[nbt={HandItems:[{tag:{Sea:{Seastone:1b}}}]}] if entity @e[tag=sea.fruit.logia.rumble.user,dx=0] run tag @s add sea.facing.rumble
execute unless entity @s[dx=0] if entity @e[tag=!sea.fruit.logia.rumble.user,dx=0] run tag @s add sea.rayhit
execute unless entity @s[dx=0] if entity @s[nbt={SelectedItem:{tag:{Sea:{Seastone:1b}}}}] if entity @e[tag=sea.fruit.logia.rumble.user,dx=0] 

execute unless score $sea.raytime ac_temp matches 40.. positioned ^ ^ ^0.1 unless entity @s[tag=sea.rayhit] run function sea:fruit/system/logia/rumblerumble/faced
scoreboard players reset $sea.raytime ac_temp

execute if entity @s[tag=sea.facing.rumble] run attribute @s minecraft:generic.attack_damage modifier add c6ecc63c-2b69-47d3-8237-833a88f0c702 rumble_facing -10000 add
execute if entity @s[tag=!sea.facing.rumble] run attribute @s minecraft:generic.attack_damage modifier remove c6ecc63c-2b69-47d3-8237-833a88f0c702

tag @s remove sea.rayhit
tag @s remove sea.facing.rumble