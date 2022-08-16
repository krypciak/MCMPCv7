execute store result score pixelX mcm run data get storage cmd a[2]
execute if score arg1 mcm matches 1 run function pixel:xnc

execute store result score pixelY mcm run data get storage cmd a[4]
execute store result score arg3 mcm run data get storage cmd a[3]
execute if score arg3 mcm matches 1 run function pixel:ync

execute store result score ramcell mcm run data get storage cmd a[5]

execute if score screenType mcm matches 0 unless score ramcell mcm matches -1 run function screen:16c_getpixel
execute if score screenType mcm matches 0 if score ramcell mcm matches -1 run function screen:16c_setpixel
execute if score screenType mcm matches 1 unless score ramcell mcm matches -1 run function pixel:rgb_getpixel
execute if score screenType mcm matches 1 if score ramcell mcm matches -1 run function screen:rgb_setpixel

scoreboard players set sessionStop mcm 0
