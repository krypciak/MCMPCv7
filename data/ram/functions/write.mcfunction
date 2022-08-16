execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get ramcell mcm
scoreboard players operation ramcell mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get ramcell mcm

execute at @e[name=rr,limit=1] store result block ~ ~ ~ RecordItem.tag.a int 1 run scoreboard players get readerInput mcm
