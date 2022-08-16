#execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Pixel Get ","bold":true,"color":"dark_red"},{"text":" PixelX: ","color":"dark_green"},{"score":{"name":"pixelX","objective":"mcm"}},{"text":" PixelY: ","color":"dark_green"},{"score":{"name":"pixelY","objective":"mcm"}}]
function screen:rgb_getpixel


execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get ramcell mcm
scoreboard players operation temp0 mcm = ramcell mcm
scoreboard players operation temp0 mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get temp0 mcm

execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1000 run scoreboard players get pixelR mcm


scoreboard players add ramcell mcm 1

execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get ramcell mcm
scoreboard players operation temp0 mcm = ramcell mcm
scoreboard players operation temp0 mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get temp0 mcm

execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1000 run scoreboard players get pixelG mcm


scoreboard players add ramcell mcm 1

execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get ramcell mcm
scoreboard players operation temp0 mcm = ramcell mcm
scoreboard players operation temp0 mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get temp0 mcm

execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1000 run scoreboard players get pixelB mcm
