tellraw @a[tag=ac_debug] [{"text":"> ","color":"#17F8C5"},{"text":"Seastone has reloaded!","color":"gray"}]
tellraw @a[tag=ac_debug] [{"text":"> ","color":"#17F8C5"},{"text":"To remove this message, remove the ac_debug tag from yourself.","color":"gray"}]
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
# Spring Spring Scores
scoreboard objectives add sea.pf.s.rec dummy
# Dice Dice Scores
scoreboard objectives add sea.pf.d.cd dummy
# Slip Slip Scores
scoreboard objectives add sea.pf.sl.cd dummy

# > Logia Fruits
# Rumble Rumble Scores
scoreboard objectives add sea.lf.r.smt dummy
scoreboard objectives add sea.lf.r.smc dummy