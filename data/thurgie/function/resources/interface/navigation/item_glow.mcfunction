data modify entity @s Glowing set value false
$execute if entity @p[tag=thurgie_resources,distance=..8] unless score @p[tag=thurgie_resources,distance=..8] thurgie_last_roll_$(item_id) = $week calendar run data modify entity @s Glowing set value true
$data modify entity @s data.current_item set value $(current_item)
$data modify entity @s data.item_id set value $(item_id)