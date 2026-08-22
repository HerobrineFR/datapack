$execute unless data storage $(storage) iterator[0] run return 0

$data modify storage $(storage) kwargs set from storage $(storage) iterator[-1]
$data modify storage $(storage) kwargs.class set value "$(class)"
$data modify storage $(storage) kwargs.storage set value "$(storage)"

$function collectif_radiant:tower/ether_machine/retrieve/give/compute with storage $(storage) kwargs

$data remove storage $(storage) iterator[-1]

$function collectif_radiant:tower/ether_machine/retrieve/give/foreach with storage $(storage)