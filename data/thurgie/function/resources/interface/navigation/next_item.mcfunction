scoreboard players add @s thurgie_resources 1
execute if score @s thurgie_resources >= $length thurgie_resources run scoreboard players set @s thurgie_resources 0
execute store result storage thurgie:resources/interface current_item int 1 run scoreboard players get @s thurgie_resources
function thurgie:resources/interface/set_item with storage thurgie:resources/interface
function thurgie:resources/interface/move_item with storage thurgie:resources/interface