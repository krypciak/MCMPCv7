execute at @e[name=pr] store result score arg1 mcm run data get storage cmd a[1]

execute if score arg1 mcm < 4 values run function math:arg1_group0
execute if score arg1 mcm > 3 values run function math:arg1_group1

scoreboard players set sessionStop mcm 0
