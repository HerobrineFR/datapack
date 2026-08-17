$execute store result storage $(storage) time.current int 1 run stopwatch query $(clock) 20
$function massilia:water_plant/waste/toggle/endpoints/initialization with storage $(storage)

$execute if data storage $(storage) {status:"on"} run return run function massilia:water_plant/waste/toggle/disable with storage $(storage)
$execute if data storage $(storage) {status:"off"} run return run function massilia:water_plant/waste/toggle/enable with storage $(storage)