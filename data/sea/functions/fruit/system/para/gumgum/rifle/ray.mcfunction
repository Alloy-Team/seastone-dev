particle dust 0.97 0.67 0.47 0.5 ~ ~ ~ 0 0 0 0 1 force
scoreboard players add $sea.fistray ac_temp 1

execute unless score $sea.fistray ac_temp matches 100.. positioned ^ ^ ^0.5 unless entity @e[tag=sea.fistowned,distance=..0.75] run function sea:fruit/system/para/gumgum/pistol/ray
scoreboard players reset $sea.fistray ac_temp