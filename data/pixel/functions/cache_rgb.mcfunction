# R
execute store result score pixelR mcm run data get storage cmd a[3]
execute if score arg2 mcm matches 1 run function pixel:cache_rgb_rnc

# G
execute store result score pixelG mcm run data get storage cmd a[5]
execute store result score arg4 mcm run data get storage cmd a[4]
execute if score arg4 mcm matches 1 run function pixel:cache_rgb_gnc

# B
execute store result score pixelB mcm run data get storage cmd a[7]
execute store result score arg6 mcm run data get storage cmd a[6]
execute if score arg6 mcm matches 1 run function pixel:cache_rgb_bnc

#execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Pixel Full  ","bold":true,"color":"dark_red"},{"text":" PixelX: ","color":"dark_green"},{"score":{"name":"pixelX","objective":"mcm"}},{"text":" PixelY: ","color":"dark_green"},{"score":{"name":"pixelY","objective":"mcm"}},{"text":" PixelR: ","color":"dark_green"},{"score":{"name":"pixelR","objective":"mcm"}},{"text":" PixelG: ","color":"dark_green"},{"score":{"name":"pixelG","objective":"mcm"}},{"text":" pixelB: ","color":"dark_green"},{"score":{"name":"pixelB","objective":"mcm"}}]

#calc cache
scoreboard players operation pixelCache mcm = pixelB mcm
scoreboard players operation temp1 mcm = pixelG mcm
scoreboard players operation temp1 mcm *= 256 values
scoreboard players operation pixelCache mcm += temp1 mcm
scoreboard players operation temp2 mcm = pixelR mcm
scoreboard players operation temp2 mcm *= 65536 values
scoreboard players operation pixelCache mcm += temp2 mcm

