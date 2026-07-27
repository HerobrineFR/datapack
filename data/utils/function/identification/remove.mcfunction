# Args : {id:"<int>", storage:"<namespace:path>"}

$execute unless data storage $(storage) id.active[{id:$(id)}] run return fail
$data modify storage $(storage) id.available append value {id:$(id)}
$data remove storage $(storage) id.active[{id:$(id)}]