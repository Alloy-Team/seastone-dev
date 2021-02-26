# > Hybrid Toggle
execute if entity @s[predicate=alloycore:player/sneak,tag=!ac_sneaked,x_rotation=87..90] run function sea:fruit/system/zoan/human/ender/toggle

execute if score @s sea.zf.tgl matches 1 run function sea:fruit/system/zoan/human/ender/hybrid/main