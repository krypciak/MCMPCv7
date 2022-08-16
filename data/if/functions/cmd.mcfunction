#operation
execute store result score arg1 mcm run data get storage cmd a[1]

#ifValue1 = temp0

execute store result score ramcell mcm run data get storage cmd a[2]
execute store result entity @e[name=rr,limit=1] Pos[2] double 0.004 run scoreboard players get ramcell mcm
scoreboard players operation ramcell mcm %= storageSizeX mcm
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get ramcell mcm

execute at @e[name=rr,limit=1] store result score temp0 mcm run data get block ~ ~ ~ RecordItem.tag.a

#ifValue2 = temp1
execute store result score temp1 mcm run data get storage cmd a[4]
execute store result score arg3 mcm run data get storage cmd a[3]
execute if score arg3 mcm matches 1 run function if:argnc

execute if score arg1 mcm matches ..2 run function if:ope_group0
execute if score arg1 mcm matches 3.. run function if:ope_group1

#execute if score arg0 mcm matches store result score pescell mcm run data get storage cmd a[5]

#execute if score coreDebug mcm matches 1 if score arg0 mcm matches 0 run tellraw @a ["",{"text":"[-","bold":true,"color":"dark_aqua"},{"text":"If","italic":true,"color":"aqua"},{"text":"-]  ","bold":true,"color":"dark_aqua"},{"score":{"name":"temp0","objective":"mcm"}},{"text":"  [","color":"dark_red"},{"score":{"name":"arg1","objective":"mcm"},"bold":true,"color":"dark_purple"},{"text":"]  ","color":"dark_red"},{"score":{"name":"temp1","objective":"mcm"}},{"text":" = ","bold":true,"color":"dark_red"},{"text":"FALSE","italic":true,"underlined":true,"color":"aqua"},{"text":"     Jumping to: ","bold":true,"color":"dark_red"},{"score":{"name":"pescell","objective":"mcm"}}]

#execute if score coreDebug mcm matches 1 if score arg0 mcm matches 1 run tellraw @a ["",{"text":"[-","bold":true,"color":"dark_aqua"},{"text":"If","italic":true,"color":"aqua"},{"text":"-]  ","bold":true,"color":"dark_aqua"},{"score":{"name":"temp0","objective":"mcm"}},{"text":"  [","color":"dark_red"},{"score":{"name":"arg1","objective":"mcm"},"bold":true,"color":"dark_purple"},{"text":"]   ","color":"dark_red"},{"score":{"name":"temp1","objective":"mcm"}},{"text":" = ","bold":true,"color":"dark_red"},{"text":"TRUE","italic":true,"underlined":true,"color":"aqua"}]

scoreboard players set sessionStop mcm 0
