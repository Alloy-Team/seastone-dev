fill ~-1 ~ ~-1 ~1 ~2 ~1 fire keep
scoreboard players set @s custom_damage 5
function custom_damage:apply
data merge entity @s[type=!player] {Fire:600s}
