$execute unless data storage $(storage) iterator[0] run return 0

$data modify storage $(storage) kwargs set from storage $(storage) iterator[-1]
$data modify storage $(storage) kwargs.class set value "$(class)"
$data modify storage $(storage) kwargs.storage set value "$(storage)"

$function massilia:water_plant/waste/retrieve/give/compute with storage $(storage) kwargs

$data remove storage $(storage) iterator[-1]

$function massilia:water_plant/waste/retrieve/give/foreach with storage $(storage)