# Args : {callback:"<function>", class:"<objective>", step:"<float> <double>", storage:"<namespace:path>", target:"<block>"}
# /!\ Reserved player in scoreboard : $blockRaycast /!\

$scoreboard players remove $blockRaycast $(class) 1
$execute if block ~ ~ ~ #utils:non_block_raycasting if score $blockRaycast $(class) matches 1.. positioned ^ ^ ^$(step) run return run function utils:raycasting/block/loop {callback:"$(callback)", class:"$(class)", step:"$(step)", storage:"$(storage)", target:"$(target)"}
$scoreboard players reset $blockRaycast $(class)
$execute unless block ~ ~ ~ $(target) run return fail
$function $(callback) with storage $(storage)
return 1