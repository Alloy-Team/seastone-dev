particle minecraft:falling_dust sand ~ ~ ~ 2 0 2 1 20 force
execute as @e[distance=0.1..2] at @s unless block ~ ~-0.1 ~ #alloycore:voids run tp @s ~ ~-0.1 ~
execute as @e[distance=2.1..4] at @s unless block ~ ~-0.05 ~ #alloycore:voids run tp @s ~ ~-0.05 ~
execute as @e[distance=4.1..5] at @s unless block ~ ~-0.02 ~ #alloycore:voids run tp @s ~ ~-0.02 ~
