$data modify storage $(storage) status set value "on"
$execute store result storage $(storage) time.offset int 1 run scoreboard players operation $offsetTime $(class) += $currentTime $(class)

$function massilia:water_plant/waste/toggle/endpoints/finalization with storage $(storage)