$execute store result storage $(storage) time.current int 1 run stopwatch query $(clock) 20
$function collectif_radiant:tower/ether_machine/toggle/endpoints/initialization with storage $(storage)

$execute if data storage $(storage) {status:"on"} run return run function collectif_radiant:tower/ether_machine/toggle/disable with storage $(storage)
$execute if data storage $(storage) {status:"off"} run return run function collectif_radiant:tower/ether_machine/toggle/enable with storage $(storage)