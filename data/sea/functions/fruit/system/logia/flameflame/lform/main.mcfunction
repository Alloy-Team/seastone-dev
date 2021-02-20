particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0 8 force
effect give @s levitation 1 255 true

execute if predicate alloycore:player/sprint run function sea:fruit/system/logia/flameflame/lform/ray

execute unless block ~ ~-0.1 ~ #alloycore:voids run function sea:fruit/system/logia/flameflame/lform/exit
