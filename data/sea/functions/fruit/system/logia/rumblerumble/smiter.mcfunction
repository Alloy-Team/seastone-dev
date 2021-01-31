execute unless score @s sea.lf.r.smt matches -100.. run scoreboard players set @s sea.lf.r.smt 100
scoreboard players remove @s sea.lf.r.smt 1





execute if score @s sea.lf.r.smt matches 0..1 run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:7}
execute if score @s sea.lf.r.smt matches 0..1 run summon lightning_bolt ~1 ~ ~
execute if score @s sea.lf.r.smt matches 0..1 run summon lightning_bolt ~-1 ~ ~
execute if score @s sea.lf.r.smt matches 0..1 run summon lightning_bolt ~ ~ ~1
execute if score @s sea.lf.r.smt matches 0..1 run summon lightning_bolt ~ ~ ~-1
execute if score @s sea.lf.r.smt matches 0..1 run kill @s