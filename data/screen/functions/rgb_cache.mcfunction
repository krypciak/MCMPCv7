# file not used
scoreboard players operation pixelCache mcm = pixelB mcm
scoreboard players operation temp1 mcm = pixelG mcm
scoreboard players operation temp1 mcm *= 256 values
scoreboard players operation pixelCache mcm += temp1 mcm
scoreboard players operation temp2 mcm = pixelR mcm
scoreboard players operation temp2 mcm *= 65536 values
scoreboard players operation pixelCache mcm += temp2 mcm
