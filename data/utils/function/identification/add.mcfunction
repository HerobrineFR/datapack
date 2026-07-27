# Args : {class:"<objective>", storage:"<namespace:path>"}
# /!\ Reserved player in scoreboard : $maxId /!\

$data modify storage $(storage) id.active append value {}
$execute if data storage $(storage) id.available[0] run function utils:identification/add/reuse with storage $(storage)
$execute unless data storage $(storage) id.active[-1].id run function utils:identification/add/new with storage $(storage)
$return run data get storage $(storage) id.active[-1].id