execute as @e[type=marker,tag=thurgie_point_tp] if score @s waystone_timer matches 1.. run function thurgie:waystones/waystone_idle

schedule function herobrine:loops/1s 1s