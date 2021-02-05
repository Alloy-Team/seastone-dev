scoreboard players add @s sea.sw.g.cd 0
scoreboard players remove @s[scores={sea.sw.g.cd=1..}] sea.sw.g.cd 1
scoreboard players remove @s[scores={sea.sw.g.tm=1..}] sea.sw.g.tm 1
effect clear @s[scores={sea.sw.g.tm=1}] resistance
effect clear @s[scores={sea.sw.g.tm=1}] strength


execute if entity @s[scores={ac_click_cs=1..,sea.sw.g.cd=0},predicate=!alloycore:player/sneak] run function sea:weapon/system/sword/base/guard


