# Args : {callback:"<function>", path:"<path>", storage:"<namespace:path>"}

$data modify storage $(storage) id.iterator set from storage $(storage) $(path)
$function utils:identification/foreach/step {callback:"$(callback)", storage:"$(storage)"}
$data remove storage $(storage) id.iterator