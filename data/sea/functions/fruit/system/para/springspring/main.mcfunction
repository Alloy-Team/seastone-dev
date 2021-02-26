# > Toggle Spring
execute if entity @s[predicate=alloycore:player/sneak,tag=!ac_sneaked,x_rotation=80..90] run function sea:fruit/system/para/springspring/toggle

# > Spring Mode
execute if score @s sea.pf.s.tg matches 1 run function sea:fruit/system/para/springspring/mode/main
