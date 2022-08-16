execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get pixelX mcm
scoreboard players operation pixelX mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get pixelX mcm

execute at @e[name=rr,limit=1] store result score pixelX mcm run data get block ~ ~ ~ RecordItem.tag.a 0.001
