execute as @s run summon item ~ ~ ~ {Item:{id:"stone"},PickupDelay:20,Tags:["thurgie_drop"]}
$data modify entity @n[type=item,tag=thurgie_drop] Item set from block $(x) $(y) $(z) Items[0]
execute store result score $roll_result thurgie_resources run data get storage thurgie:resources/interface roll
execute store result score $roll_difficulty thurgie_resources run data get storage thurgie:resources resources[0].roll_difficulty
data modify entity @s Glowing set value false
$execute store result score @p[tag=thurgie_resources,distance=..8] thurgie_last_roll_$(item_id) run scoreboard players get $week calendar
execute if score $roll_result thurgie_resources <= $roll_difficulty thurgie_resources run data modify storage thurgie:resources/interface roll_tier set value 0
execute if score $roll_result thurgie_resources > $roll_difficulty thurgie_resources run data modify storage thurgie:resources/interface roll_tier set value 1
execute if score $roll_result thurgie_resources matches 20.. run data modify storage thurgie:resources/interface roll_tier set value 2
execute store result storage thurgie:resources/interface tier_x int 1 run data get storage thurgie:resources tiers_chest.x
execute store result storage thurgie:resources/interface tier_y int 1 run data get storage thurgie:resources tiers_chest.y
execute store result storage thurgie:resources/interface tier_z int 1 run data get storage thurgie:resources tiers_chest.z
execute as @n[type=item,tag=thurgie_drop] at @s run function thurgie:resources/give/set_tier with storage thurgie:resources/interface