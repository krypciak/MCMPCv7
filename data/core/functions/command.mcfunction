execute store result entity @e[name=pr,limit=1] Pos[2] double 0.004 run scoreboard players get pescell mcm
scoreboard players operation temp0 mcm = pescell mcm
scoreboard players operation temp0 mcm %= storageSizeX mcm
execute store result entity @e[name=pr,limit=1] Pos[0] double 1 run scoreboard players get temp0 mcm

execute at @e[name=pr] run data modify storage cmd a set from block ~ ~ ~ RecordItem.tag.a

execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"CMD: ","bold":true,"color":"gold"},{"nbt":"a[0]","storage":"cmd","bold":true,"color":"green"}," ",{"nbt":"a[1]","storage":"cmd","bold":true,"color":"green"}," ",{"nbt":"a[2]","storage":"cmd","bold":true,"color":"green"}," ",{"nbt":"a[3]","storage":"cmd","bold":true,"color":"green"}," ",{"nbt":"a[5]","storage":"cmd","bold":true,"color":"green"}," ",{"nbt":"a[6]","storage":"cmd","bold":true,"color":"green"}," ",{"nbt":"a[7]","storage":"cmd","bold":true,"color":"green"}]


execute store result score arg0 mcm run data get storage cmd a[0]
execute at @e[name=pr] if block ~ ~ ~ air run function core:exit

scoreboard players set sessionStop mcm 1

execute if score arg0 mcm matches ..3 run function core:cmd_group0
execute if score arg0 mcm matches 4.. run function core:cmd_group1

scoreboard players add commandAmount mcm 1

scoreboard players add pescell mcm 1
execute if score coreStop mcm matches 0 if score sessionStop mcm matches 0 run function core:command
