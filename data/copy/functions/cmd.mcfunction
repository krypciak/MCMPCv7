execute store result score ramcell mcm run data get storage cmd a[1]
execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get ramcell mcm
scoreboard players operation ramcell mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get ramcell mcm
execute at @e[name=rr] store result score readerOutput mcm run data get block ~ ~ ~ RecordItem.tag.a

execute store result score ramcell mcm run data get storage cmd a[2]
execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get ramcell mcm
scoreboard players operation ramcell mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get ramcell mcm
execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1 run scoreboard players get readerOutput mcm

scoreboard players set sessionStop mcm 0
