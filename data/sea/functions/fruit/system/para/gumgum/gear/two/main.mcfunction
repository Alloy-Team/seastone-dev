scoreboard players remove @s[scores={sea.pf.g.sgt=1..}] sea.pf.g.sgt 1
particle minecraft:cloud ~ ~1 ~ 0.4 1 0.4 0 1 force
effect give @s speed 1 1 true
effect give @s strength 1 0 true
effect give @s jump_boost 1 1 true
effect clear @s[tag=sea.gg.clearlev] levitation
tag @s remove sea.gg.clearlev

execute if block ~ ~-0.1 ~ #alloycore:voids if entity @s[x_rotation=65..90,predicate=alloycore:player/sneak,tag=!ac_sneaked,tag=!sea.fruit.para.gum.gear.two.jump] run function sea:fruit/system/para/gumgum/gear/two/jump
execute unless block ~ ~-0.1 ~ #alloycore:voids run tag @s remove sea.fruit.para.gum.gear.two.jump



execute if entity @s[scores={sea.pf.g.sgt=..0}] run function sea:fruit/system/para/gumgum/gear/two/end

