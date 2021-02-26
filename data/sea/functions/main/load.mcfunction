tellraw @a[tag=ac_debug] [{"text":"> ","color":"#17F8C5"},{"text":"Seastone has reloaded!","color":"gray"}]
forceload add 0 0 0 0

# >> Score creations
# > Misc Scores
scoreboard objectives add sea.sink_id dummy
scoreboard objectives add sea.oid dummy
scoreboard objectives add sea.bow_used minecraft.used:minecraft.bow
scoreboard objectives add sea.fell minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add sea.w.tm dummy

# > Swords
scoreboard objectives add sea.sw.g.cd dummy
scoreboard objectives add sea.sw.g.tm dummy
scoreboard objectives add sea.sw.c dummy


# > Para Fruits
# Gum Gum Scores
scoreboard objectives add sea.pf.g.ela dummy
scoreboard objectives add sea.pf.g.sgt dummy
scoreboard objectives add sea.pf.g.sgc dummy
# Spring Spring Scores
scoreboard objectives add sea.pf.s.tg dummy
scoreboard objectives add sea.pf.s.tm dummy
# Dice Dice Scores
scoreboard objectives add sea.pf.d.cd dummy
# Slip Slip Scores
scoreboard objectives add sea.pf.sl.cd dummy

# > Logia Fruits
# Rumble Rumble Scores
scoreboard objectives add sea.lf.r.smt dummy
scoreboard objectives add sea.lf.r.smc dummy
# Flame Flame Scores
scoreboard objectives add sea.lf.f.cd dummy





# >> Fruit Availability
scoreboard objectives add sea.fruit.av dummy

# > Assign
# Para
scoreboard players add $sea.pf.bubble sea.fruit.av 0
scoreboard players add $sea.pf.castle sea.fruit.av 0
scoreboard players add $sea.pf.chop sea.fruit.av 0
scoreboard players add $sea.pf.cream sea.fruit.av 0
scoreboard players add $sea.pf.dice sea.fruit.av 0
scoreboard players add $sea.pf.glitter sea.fruit.av 0
scoreboard players add $sea.pf.gum sea.fruit.av 0
scoreboard players add $sea.pf.heal sea.fruit.av 0
scoreboard players add $sea.pf.hollow sea.fruit.av 0
scoreboard players add $sea.pf.kilo sea.fruit.av 0
scoreboard players add $sea.pf.lick sea.fruit.av 0
scoreboard players add $sea.pf.love sea.fruit.av 0
scoreboard players add $sea.pf.mark sea.fruit.av 0
scoreboard players add $sea.pf.mochi sea.fruit.av 0
scoreboard players add $sea.pf.op sea.fruit.av 0
scoreboard players add $sea.pf.paw sea.fruit.av 0
scoreboard players add $sea.pf.puff sea.fruit.av 0
scoreboard players add $sea.pf.revive sea.fruit.av 0
scoreboard players add $sea.pf.rust sea.fruit.av 0
scoreboard players add $sea.pf.shadow sea.fruit.av 0
scoreboard players add $sea.pf.slip sea.fruit.av 0
scoreboard players add $sea.pf.spring sea.fruit.av 0
scoreboard players add $sea.pf.stick sea.fruit.av 0
scoreboard players add $sea.pf.straw sea.fruit.av 0
scoreboard players add $sea.pf.string sea.fruit.av 0
scoreboard players add $sea.pf.time sea.fruit.av 0
scoreboard players add $sea.pf.tremor sea.fruit.av 0
scoreboard players add $sea.pf.venom sea.fruit.av 0
scoreboard players add $sea.pf.wax sea.fruit.av 0
# Logia
scoreboard players add $sea.lf.dark sea.fruit.av 0
scoreboard players add $sea.lf.flame sea.fruit.av 0
scoreboard players add $sea.lf.gas sea.fruit.av 0
scoreboard players add $sea.lf.glint sea.fruit.av 0
scoreboard players add $sea.lf.ice sea.fruit.av 0
scoreboard players add $sea.lf.mag sea.fruit.av 0
scoreboard players add $sea.lf.plume sea.fruit.av 0
scoreboard players add $sea.lf.rumble sea.fruit.av 0
scoreboard players add $sea.lf.sand sea.fruit.av 0
scoreboard players add $sea.lf.snow sea.fruit.av 0
scoreboard players add $sea.lf.swamp sea.fruit.av 0
# Zoan
scoreboard players add $sea.zf.bat.vanilla sea.fruit.av 0
scoreboard players add $sea.zf.bug.bee sea.fruit.av 0
scoreboard players add $sea.zf.bug.endermite sea.fruit.av 0
scoreboard players add $sea.zf.dog.fox sea.fruit.av 0
scoreboard players add $sea.zf.human.vanilla sea.fruit.av 0
scoreboard players add $sea.zf.human.enderman sea.fruit.av 0
scoreboard players add $sea.zf.ox.cow sea.fruit.av 0
scoreboard players add $sea.zf.pig.creeper sea.fruit.av 0
scoreboard players add $sea.zf.salamander.dolphin sea.fruit.av 0
scoreboard players add $sea.zf.salamander.squid sea.fruit.av 0
