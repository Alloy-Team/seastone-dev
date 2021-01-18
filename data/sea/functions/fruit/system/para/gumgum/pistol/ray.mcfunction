particle dust 1 0.5 0.5 0.5 ~ ~ ~ 0 0 0 0 1 force
scoreboard players add $sea.fistray ac_temp 1

execute unless score $sea.fistray ac_temp matches 100.. positioned ^ ^ ^0.5 unless entity @a[tag=sea.fistowner,dx=0] run function sea:fruit/system/para/gumgum/pistol/ray
scoreboard players reset $sea.fistray ac_temp