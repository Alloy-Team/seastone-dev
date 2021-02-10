scoreboard players add @s sea.pf.d.cd 0
scoreboard players remove @s[scores={sea.pf.d.cd=1..}] sea.pf.d.cd 1


execute if entity @s[scores={sea.pf.d.cd=..0},tag=!ac_sneaked,predicate=alloycore:player/sneak,predicate=alloycore:player/sprint] run function sea:fruit/system/para/dicedice/guard

execute if entity @s[scores={sea.pf.d.cd=..0,ac_hits=1..}] positioned ~ ~1 ~ positioned ^ ^ ^2 unless entity @s[dx=0] as @e[sort=nearest,limit=1,dx=0] at @s run function sea:fruit/system/para/dicedice/slash

