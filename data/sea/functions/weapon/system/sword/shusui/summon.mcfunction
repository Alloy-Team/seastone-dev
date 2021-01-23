summon armor_stand ^ ^1 ^1.8 {NoGravity:1b,Small:1b,NoBasePlate:1b,Invisible:1b,Tags:["sea_shusui_a"]}
execute as @e[tag=sea_shusui_a] at @s run function sea:weapon/system/sword/shusui/dmg
kill @e[type=armor_stand,tag=sea_shusui_a]