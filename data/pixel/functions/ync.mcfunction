execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get pixelY mcm
scoreboard players operation pixelY mcm %= storageSizeY mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get pixelY mcm

execute at @e[name=rr,limit=1] store result score pixelY mcm run data get block ~ ~ ~ RecordItem.tag.a 0.001

