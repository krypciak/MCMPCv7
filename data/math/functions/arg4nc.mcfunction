execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get temp1 mcm
scoreboard players operation temp1 mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get temp1 mcm

execute at @e[name=rr,limit=1] store result score temp1 mcm run data get block ~ ~ ~ RecordItem.tag.a
