particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.2 0.2 0.2 0 3 force
effect give @s levitation 1 255 true

execute if predicate alloycore:player/sprint run function sea:fruit/system/logia/plumeplume/lform/ray

execute unless block ~ ~-0.1 ~ #alloycore:voids run function sea:fruit/system/logia/plumeplume/lform/exit
