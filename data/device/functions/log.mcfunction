execute store result score temp0 mcm run data get storage cmd a[2]
execute store result score temp1 mcm run data get storage cmd a[3]
execute if score temp0 mcm matches 1 run function device:arg3nc

#stop deleting tellraw!!
tellraw @a ["",{"text":"--------- ","bold":true,"color":"aqua"},{"text":"Log: ","bold":true,"color":"gold"},{"score":{"name":"temp1","objective":"mcm"},"bold":true,"color":"aqua"}]

