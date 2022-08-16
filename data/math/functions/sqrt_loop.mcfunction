#	t1 = (t2 + t1) / 2;
scoreboard players operation temp0 mcm += temp1 mcm
scoreboard players operation temp0 mcm /= 2 values
#	t2 = valT / t1;
scoreboard players operation temp1 mcm = temp3 mcm
scoreboard players operation temp1 mcm /= temp0 mcm

#}
execute if score temp0 mcm > temp1 mcm run function math:sqrt_loop
