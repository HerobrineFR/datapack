$scoreboard players set $cycle $(class) $(cycle)

$scoreboard players operation $total $(class) = $currentTime $(class)
$scoreboard players operation $total $(class) /= $cycle $(class)

$scoreboard players operation $count $(class) = $total $(class)
$scoreboard players remove $count $(class) $(given)

$execute store result storage $(storage) kwargs.total int 1 run scoreboard players get $total $(class)
$execute store result storage $(storage) kwargs.count int 1 run scoreboard players get $count $(class)
$execute if score $count $(class) matches 1.. run function collectif_radiant:tower/ether_machine/retrieve/give/run with storage $(storage) kwargs