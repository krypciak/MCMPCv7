execute store result score arg1 mcm run data get storage cmd a[1]
execute if score arg1 mcm matches -1 run function pixel:cache
execute unless score arg1 mcm matches -1 run function pixel:normal

