#final int val = r[p[l][2]];
#final int valT = val * 1000;
#int t1 = val;
#int t2 = 1;
#while (t1 > t2) {
#	t1 = (t2 + t1) / 2;
#	t2 = valT / t1;
#}
#r[p[l][3]] = t1;


#final int val = r[p[l][2]]; (temp2 == val)
execute store result score ramcell mcm run data get storage cmd a[2]
execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get ramcell mcm
scoreboard players operation ramcell mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get ramcell mcm
execute at @e[name=rr] store result score temp2 mcm run data get block ~ ~ ~ RecordItem.tag.a

#final int valT = val * 1000; (valT == temp3)
scoreboard players operation temp3 mcm = temp2 mcm
scoreboard players operation temp3 mcm *= 1000 values

#int t1 = val; (t1 == temp0)
scoreboard players operation temp0 mcm = temp2 mcm
#int t2 = 1; (t2 == temp1)
scoreboard players set temp1 mcm 1000

#while (t1 > t2) {
execute if score temp0 mcm > temp1 mcm run function math:sqrt_loop


#r[p[l][3]] = t1;
execute store result score ramcell mcm run data get storage cmd a[3]
execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get ramcell mcm
scoreboard players operation ramcell mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get ramcell mcm

execute at @e[name=rr,limit=1] store result block ~ ~ ~ RecordItem.tag.a int 1 run scoreboard players get temp0 mcm
