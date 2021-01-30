execute unless entity @s[predicate=alloycore:player/sneak,nbt=!{SelectedItem:{}}] if score @s sea.pf.s.rec matches 1.. run scoreboard players remove @s sea.pf.s.rec 1
scoreboard players add @s sea.pf.s.rec 0

# Recoil Charge
execute if entity @s[predicate=alloycore:player/sneak,nbt=!{SelectedItem:{}}] run function sea:fruit/system/para/springspring/charge/main
execute unless entity @s[predicate=alloycore:player/sneak,nbt=!{SelectedItem:{}}] if entity @s[tag=sea.fruit.para.spring.release] run function sea:fruit/system/para/springspring/charge/release

# Launch
execute at @e[tag=sea.fruit.para.spring.launcher,type=armor_stand] if score @e[tag=sea.fruit.para.spring.launcher,sort=nearest,limit=1] sea.oid = @s ac_entity_id run tag @e[tag=sea.fruit.para.spring.launcher,sort=nearest,limit=1] add sea.launchconfirm

execute at @e[tag=sea.launchconfirm,distance=0.01..] run tp @s ~ ~ ~
execute if entity @e[tag=sea.launchconfirm,distance=0.01..] run effect give @s slow_falling 1 1 true
execute if entity @e[tag=sea.launchconfirm,distance=0.01..] run effect give @s strength 1 0 true

tag @e[tag=sea.fruit.para.spring.launcher] remove sea.launchconfirm
