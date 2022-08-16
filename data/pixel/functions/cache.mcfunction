execute store result score arg2 mcm run data get storage cmd a[2]
execute store result score arg3 mcm run data get storage cmd a[3]
execute if score arg2 mcm matches -1 run scoreboard players operation pixelCache mcm = arg3 mcm
execute unless score arg2 mcm matches -1 if score screenType mcm matches 0 run function pixel:cache_16c
execute unless score arg2 mcm matches -1 if score screenType mcm matches 1 run function pixel:cache_rgb

scoreboard players set sessionStop mcm 0
