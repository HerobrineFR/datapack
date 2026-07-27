# Args : {callback:"<function>", storage:"<namespace:path>"}

$execute unless data storage $(storage) id.iterator[0] run return 0
$function $(callback) with storage $(storage) id.iterator[-1]
$data remove storage $(storage) id.iterator[-1]
$function utils:identification/foreach/step {callback:"$(callback)", storage:"$(storage)"}