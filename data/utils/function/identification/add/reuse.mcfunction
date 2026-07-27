# Args : {storage:"<namespace:path>"}

$data modify storage $(storage) id.active[-1].id set from storage $(storage) id.available[-1].id
$data remove storage $(storage) id.available[-1]