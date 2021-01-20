effect give @s[type=#alloycore:undead] instant_health 1 2 true
execute as @s[type=!#alloycore:undead] run scoreboard players set @s custom_damage 7
execute as @s[type=!#alloycore:undead] run function custom_damage:apply


playsound minecraft:entity.player.attack.crit ambient @a[distance=..20] ~ ~ ~ 1.5 0.75