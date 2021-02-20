scoreboard players add $sea.raytime ac_temp 1

execute unless entity @s[dx=0] if entity @e[dx=0] run scoreboard players set $sea.raytime ac_temp 40
execute unless entity @s[dx=0] if entity @e[tag=sea.fruit.logia.flame.user,dx=0] run tag @s add sea.facing.flame


execute unless score $sea.raytime ac_temp matches 40.. positioned ^ ^ ^0.1 unless entity @s[tag=sea.rayhit] run function sea:fruit/system/logia/flameflame/faced
scoreboard players reset $sea.raytime ac_temp

execute if entity @s[tag=sea.facing.flame] run effect give @s weakness 1 255 true
execute if entity @s[tag=sea.facing.flame] run particle flame ~ ~ ~ 0 0 0 0.01 1 force @s

execute as @s[type=!player] if predicate sea:fruit/logia/flame/faced run effect give @s weakness 1 255 true

tag @s remove sea.rayhit
tag @s remove sea.facing.flame