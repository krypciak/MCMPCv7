execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get pixelB mcm
scoreboard players operation pixelB mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get pixelB mcm

execute at @e[name=rr,limit=1] store result score pixelB mcm run data get block ~ ~ ~ RecordItem.tag.a 0.001
