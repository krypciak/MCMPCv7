execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get pixelG mcm
scoreboard players operation pixelG mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get pixelG mcm

execute at @e[name=rr,limit=1] store result score pixelG mcm run data get block ~ ~ ~ RecordItem.tag.a 0.001
