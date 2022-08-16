execute store result score arg2 mcm run data get storage cmd a[2]

execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Misc  Wait   ","color":"dark_red", "bold":true},{"text":"Waiting ","color":"gold"},{"score":{"name":"arg2","objective":"mcm"}},{"text":" ticks","color":"gold"}]

scoreboard players set waiting mcm 1

execute if score arg2 mcm matches 0..10 run function device:corewait_group0
execute if score arg2 mcm matches 11..20 run function device:corewait_group1
execute if score arg2 mcm matches 21..30 run function device:corewait_group2
execute if score arg2 mcm matches 31..40 run function device:corewait_group3
execute if score arg2 mcm matches 41..50 run function device:corewait_group4
execute if score arg2 mcm matches 51..150 run function device:corewait_group5
execute if score arg2 mcm matches 160..250 run function device:corewait_group6
execute if score arg2 mcm matches 260..350 run function device:corewait_group7

