execute if score arg1 mcm matches 3 unless score temp0 mcm <= temp1 mcm store result score pescell mcm run data get storage cmd a[5]
execute if score arg1 mcm matches 4 unless score temp0 mcm >= temp1 mcm store result score pescell mcm run data get storage cmd a[5]
execute if score arg1 mcm matches 5 if score temp0 mcm = temp1 mcm store result score pescell mcm run data get storage cmd a[5]
