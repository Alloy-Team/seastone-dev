execute if entity @s[scores={ac_click_cs=1..,sea.sw.g.cd=0},predicate=alloycore:player/sprint,nbt={SelectedItem:{}}] run function sea:weapon/system/sword/katana/special
execute if entity @s[tag=!ac_sneaking,predicate=alloycore:player/sneak,predicate=alloycore:player/sprint,nbt=!{SelectedItem:{}}] run function sea:weapon/system/sword/katana/special
