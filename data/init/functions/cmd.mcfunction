execute store result score ramcell mcm run data get storage cmd a[2]

#execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Init  ","bold":true,"color":"dark_red"},{"score":{"name":"readerInput","objective":"mcm"},"color":"#FFFFFF"},{"text":"    Write to cell: ","color":"gold"},{"score":{"name":"ramcell","objective":"mcm"},"color":"#FFFFFF"}]

execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get ramcell mcm
scoreboard players operation ramcell mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get ramcell mcm

execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1 run data get storage cmd a[1]

scoreboard players set sessionStop mcm 0
