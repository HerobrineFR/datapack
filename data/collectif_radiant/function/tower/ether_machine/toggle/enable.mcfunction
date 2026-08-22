$data modify storage $(storage) status set value "on"
$execute store result storage $(storage) time.offset int 1 run scoreboard players operation $offsetTime $(class) += $currentTime $(class)

$function collectif_radiant:tower/ether_machine/toggle/endpoints/finalization with storage $(storage)