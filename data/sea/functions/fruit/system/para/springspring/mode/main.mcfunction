scoreboard players remove @s[scores={sea.pf.s.tm=1..}] sea.pf.s.tm 1

# > Effects
effect clear @s levitation
effect give @s jump_boost 1 6 true
effect give @s speed 1 2 true
effect give @s strength 1 2 true
# > Bounce
execute unless block ~ ~-0.01 ~ #alloycore:voids unless entity @s[scores={sea.pf.s.tm=1..}] run function sea:fruit/system/para/springspring/mode/bounce

# > Attack Cool
execute if score @s ac_hits matches 1.. run effect give @s weakness 3 255 true