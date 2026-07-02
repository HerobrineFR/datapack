scoreboard players set @s maths_out 1
scoreboard objectives add temp dummy

function utils:x_sin
scoreboard players operation @s temp = @s maths_in
scoreboard players operation @s maths_in = @s maths_in_2
function utils:x_sin
scoreboard players operation @s maths_in = @s temp
scoreboard objectives remove temp