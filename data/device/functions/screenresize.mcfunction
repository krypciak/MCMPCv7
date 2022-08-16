execute store result score screenSizeX mcm run data get block 1 1 0 RecordItem.tag.a 0.001
execute store result score screenSizeY mcm run data get block 2 1 0 RecordItem.tag.a 0.001
execute store result score screenType mcm run data get block 3 1 0 RecordItem.tag.a 0.001
function screen:resize

scoreboard players set sessionStop mcm 0
