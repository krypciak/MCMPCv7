execute if score arg1 mcm matches 0 unless score temp0 mcm = temp1 mcm store result score pescell mcm run data get storage cmd a[5]
execute if score arg1 mcm matches 1 unless score temp0 mcm < temp1 mcm store result score pescell mcm run data get storage cmd a[5]
execute if score arg1 mcm matches 2 unless score temp0 mcm > temp1 mcm store result score pescell mcm run data get storage cmd a[5]
