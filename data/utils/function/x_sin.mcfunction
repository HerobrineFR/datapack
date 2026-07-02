scoreboard objectives add maths_var_1 dummy
scoreboard players set 4 maths_in 4
scoreboard players set 40500 maths_in 40500
scoreboard players set 180 maths_in 180
scoreboard players set -1 maths_in -1
scoreboard players set 360 maths_in 360
scoreboard players set 0 maths_in 0
scoreboard players set 100 maths_in 100

scoreboard players operation @s maths_out *= 100 maths_in
execute if score @s maths_in < 0 maths_in run scoreboard players operation @s maths_in += 360 maths_in
execute if score @s maths_in > 180 maths_in run scoreboard players operation @s maths_out *= -1 maths_in
execute if score @s maths_in > 180 maths_in run scoreboard players operation @s maths_in -= 180 maths_in

scoreboard players operation @s maths_out *= @s maths_in 
scoreboard players operation @s maths_out *= 4 maths_in 
scoreboard players operation @s maths_var_1 = 180 maths_in
scoreboard players operation @s maths_var_1 -= @s maths_in
scoreboard players operation @s maths_out *= @s maths_var_1
scoreboard players operation @s maths_var_1 *= @s maths_in
scoreboard players operation @s maths_var_1 -= 40500 maths_in
scoreboard players operation @s maths_var_1 *= -1 maths_in
scoreboard players operation @s maths_out /= @s maths_var_1
scoreboard objectives remove maths_var_1