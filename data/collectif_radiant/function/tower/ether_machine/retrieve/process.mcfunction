$execute store result storage $(storage) time.current int 1 run stopwatch query $(clock) 20
$function collectif_radiant:tower/ether_machine/retrieve/endpoints/initialization with storage $(storage)

$execute if data storage $(storage) {status:"on"} run function collectif_radiant:tower/ether_machine/retrieve/give with storage $(storage)

$function collectif_radiant:tower/ether_machine/retrieve/endpoints/finalization with storage $(storage)