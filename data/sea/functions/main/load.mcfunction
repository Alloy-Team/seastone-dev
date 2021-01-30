tellraw @a[tag=ac_debug] [{"text":"> ","color":"#17F8C5"},{"text":"Seastone has reloaded!","color":"gray"}]
tellraw @a[tag=ac_debug] [{"text":"> ","color":"#17F8C5"},{"text":"To remove this message, remove the ac_debug tag from yourself.","color":"gray"}]
forceload add 0 0 0 0

# >> Score creations
# > Misc Scores
scoreboard objectives add sea.sink_id dummy
scoreboard objectives add sea.oid dummy

# > Swords
scoreboard objectives add sea.sw.g.cd dummy
scoreboard objectives add sea.sw.g.tm dummy


# > Para Fruits
# Gum Gum Scores
scoreboard objectives add sea.pf.g.ela dummy
# Spring Spring Scores
scoreboard objectives add sea.pf.s.rec dummy
