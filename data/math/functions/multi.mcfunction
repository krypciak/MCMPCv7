execute store result score temp0 mcm run data get storage cmd a[2]
execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get temp0 mcm
scoreboard players operation temp0 mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get temp0 mcm

execute at @e[name=rr,limit=1] store result score temp0 mcm run data get block ~ ~ ~ RecordItem.tag.a


execute store result score temp1 mcm run data get storage cmd a[4]
execute store result score arg3 mcm run data get storage cmd a[3]
execute if score arg3 mcm matches 1 run function math:arg4nc

#execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Math  ","bold":true,"color":"dark_red"},{"score":{"name":"temp0","objective":"mcm"},"color":"#FFFFFF"},{"text":" - ","bold":true,"color":"dark_red"},{"score":{"name":"temp1","objective":"mcm"},"color":"#FFFFFF"}]

scoreboard players operation temp0 mcm *= temp1 mcm

execute store result score ramcell mcm run data get storage cmd a[5]
execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get ramcell mcm
scoreboard players operation ramcelll mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get ramcell mcm

execute at @e[name=rr,limit=1] store result block ~ ~ ~ RecordItem.tag.a int 0.001 run scoreboard players get temp0 mcm

scoreboard players set sessionStop mcm 0
