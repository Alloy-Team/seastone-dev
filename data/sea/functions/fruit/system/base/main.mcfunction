# >> Noswim
execute at @e[type=armor_stand,tag=sea.fruit.sinker] if score @e[type=armor_stand,tag=sea.fruit.sinker,sort=nearest,limit=1] sea.sink_id = @s ac_entity_id run tag @e[type=armor_stand,tag=sea.fruit.sinker,sort=nearest,limit=1] add sea.fruit.sinker.target

execute unless block ~ ~ ~ #sea:water run kill @e[tag=sea.fruit.sinker.target]
execute if entity @e[type=boat,dx=0] run kill @e[tag=sea.fruit.sinker.target]

execute if block ~ ~ ~ #sea:water unless entity @e[type=boat,dx=0] unless entity @e[tag=sea.fruit.sinker.target] run function sea:fruit/system/base/summon
execute if block ~ ~ ~ #sea:water run effect give @s weakness 3 10 true
execute if block ~ ~ ~ #sea:water run effect give @s slowness 6 0 true

execute if entity @e[tag=sea.fruit.sinker.target,distance=0.1..] at @e[tag=sea.fruit.sinker.target,sort=nearest,limit=1] run tp @s ~ ~ ~

tag @e[type=armor_stand] remove sea.fruit.sinker.target

# >> Fruit Mains

# > Paramecia
# Spring Spring
execute as @s[tag=sea.fruit.para.spring.user] at @s run function sea:fruit/system/para/springspring/main
# Dice Dice
execute as @s[tag=sea.fruit.para.dice.user] at @s run function sea:fruit/system/para/dicedice/main
# Slip Slip
execute as @s[tag=sea.fruit.para.slip.user] at @s run function sea:fruit/system/para/slipslip/main



# > Logia
# Rumble Rumble
execute as @s[tag=sea.fruit.logia.rumble.user] at @s run function sea:fruit/system/logia/rumblerumble/main
# Flame Flame
execute as @s[tag=sea.fruit.logia.flame.user] at @s run function sea:fruit/system/logia/flameflame/main
# Plume Plume
execute as @s[tag=sea.fruit.logia.plume.user] at @s run function sea:fruit/system/logia/plumeplume/main
# Sand Sand
execute as @s[tag=sea.fruit.logia.sand.user] at @s run function sea:fruit/system/logia/sandsand/main
