execute store result score arg1 mcm run data get storage cmd a[1]
execute if score arg1 mcm matches 0 run function device:corewait
execute if score arg1 mcm matches 1 run function device:screenresize
execute if score arg1 mcm matches 2 if score coreLog mcm matches 1 run function device:log
execute if score arg1 mcm matches 2 run scoreboard players set sessionStop mcm 0
