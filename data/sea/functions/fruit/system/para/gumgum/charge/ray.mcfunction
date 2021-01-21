particle dust 0.97 0.67 0.47 0.5 ~ ~ ~ 0 0 0 0 1 force
scoreboard players add $sea.rocketray ac_temp 1

execute unless score $sea.rocketray ac_temp matches 100.. positioned ^ ^ ^0.5 unless entity @a[tag=sea.longconfirm,dx=0] run function sea:fruit/system/para/gumgum/charge/ray
scoreboard players reset $sea.rocketray ac_temp