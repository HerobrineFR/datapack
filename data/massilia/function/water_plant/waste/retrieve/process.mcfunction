$execute store result storage $(storage) time.current int 1 run stopwatch query $(clock) 20
$function massilia:water_plant/waste/retrieve/endpoints/initialization with storage $(storage)

$execute if data storage $(storage) {status:"on"} run function massilia:water_plant/waste/retrieve/give with storage $(storage)

$function massilia:water_plant/waste/retrieve/endpoints/finalization with storage $(storage)