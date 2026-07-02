execute if block ~ ~ ~ chest if items block ~ ~ ~ container.0 * run data modify storage thurgie:resources/current_chest roll_difficulty set from block ~ ~ ~ components.minecraft:custom_data.roll_difficulty
execute if block ~ ~ ~ chest if items block ~ ~ ~ container.0 * run data modify storage thurgie:resources/current_chest item_id set from block ~ ~ ~ components.minecraft:custom_data.item_id
execute if block ~ ~ ~ chest if items block ~ ~ ~ container.0 * run function thurgie:resources/chest_creation/create_storage with block ~ ~ ~
execute if block ~ ~ ~ chest if items block ~ ~ ~ container.0 * run function thurgie:resources/chest_creation/append_new_resource with storage thurgie:resources/current_chest
execute store result score $length thurgie_resources run data get storage thurgie:resources resources
execute store result storage thurgie:resources/current_chest length int 1 run data get storage thurgie:resources resources
execute if block ~ ~ ~ chest if items block ~ ~ ~ container.0 * run function thurgie:resources/chest_creation/set_chest_name with storage thurgie:resources/current_chest