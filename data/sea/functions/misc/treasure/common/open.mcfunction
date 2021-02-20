replaceitem entity @s[gamemode=!creative] weapon.mainhand air

# sounds
playsound minecraft:entity.item.pickup ambient @s ~ ~ ~ 1 0
playsound minecraft:block.chest.open ambient @s ~ ~ ~ 1 1.1

# oogchamps base loot
loot give @s loot sea:treasure/common
# if amalgam give coin poger
execute if predicate aml:present run loot give @s loot sea:treasure/coin



