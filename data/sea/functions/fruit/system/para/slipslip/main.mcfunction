scoreboard players add @s sea.pf.sl.cd 0
scoreboard players remove @s[predicate=!alloycore:player/sprint,scores={sea.pf.sl.cd=1..}] sea.pf.sl.cd 1

# Nonhaki Immunity
execute as @e[distance=0.1..5] at @s positioned ~ ~1 ~ positioned ^ ^ ^0.2 run function sea:fruit/system/para/slipslip/faced

# Slipspeed
execute if entity @s[nbt=!{Inventory:[{Slot:100}]},predicate=alloycore:player/sprint] run scoreboard players add @s[scores={sea.pf.sl.cd=..299}] sea.pf.sl.cd 1


execute if entity @s[scores={sea.pf.sl.cd=100..},nbt=!{Inventory:[{Slot:100}]},predicate=alloycore:player/sprint] run effect give @s speed 1 0 true
execute if entity @s[scores={sea.pf.sl.cd=200..},nbt=!{Inventory:[{Slot:100}]},predicate=alloycore:player/sprint] run effect give @s speed 1 1 true
execute if entity @s[scores={sea.pf.sl.cd=300..},nbt=!{Inventory:[{Slot:100}]},predicate=alloycore:player/sprint] run effect give @s speed 1 2 true

