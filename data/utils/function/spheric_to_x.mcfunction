scoreboard players set @s maths_out 1
scoreboard objectives add temp dummy
execute store result score @s maths_in run data get entity @s Rotation[0] -1
execute store result score @s maths_in_2 run data get entity @s Rotation[1] -1

function utils:x_cos
scoreboard players operation @s temp = @s maths_in
scoreboard players operation @s maths_in = @s maths_in_2
function utils:x_sin
scoreboard players operation @s maths_in = @s temp
scoreboard objectives remove temp