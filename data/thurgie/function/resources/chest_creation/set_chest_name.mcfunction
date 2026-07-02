data modify block ~ ~ ~ CustomName set from block ~ ~ ~ Items[0].components.minecraft:custom_name
$data modify block ~ ~ ~ CustomName merge value {extra:[{text:" [$(item_id)]",color:"#888888"},{text:" Difficulté : ",color:"#AE55D9"},{text:"$(roll_difficulty)",color:"#695775"}]}
$scoreboard objectives add thurgie_last_roll_$(item_id) dummy