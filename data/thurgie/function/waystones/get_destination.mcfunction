execute store result storage thurgie:waystones temp int 1 run data get entity @p SelectedItem.components.minecraft:custom_data.thurgie_waystones
scoreboard players set @n[type=marker,tag=thurgie_point_tp,distance=..20] waystone_timer 60
tellraw @a[distance=..20] {"text":"** La pierre vibre... alors qu'un chemin s'ouvre.","color":"aqua"}
execute as @n[type=marker,tag=thurgie_point_tp,distance=..20] at @s run function thurgie:waystones/update_travel_entity with storage thurgie:waystones