particle flame ~ ~ ~ 0 0 0 0.05 1 force
scoreboard players add $sea.raytime ac_temp 1
tag @s add sea.yes

fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire keep


execute positioned ^ ^ ^0.5 unless score $sea.raytime ac_temp matches 21.. if block ~ ~ ~ #alloycore:voids unless entity @e[tag=!sea.yes,dx=0,type=!#alloycore:nonliving] run function sea:fruit/system/logia/flameflame/col/ray
scoreboard players reset $sea.raytime ac_temp
tag @s remove sea.yes
