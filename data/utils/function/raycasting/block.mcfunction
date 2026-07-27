# Args : {callback:"<function>", class:"<objective>", maxStep:"<byte> <short> <int> <long>", step:"<float> <double>", storage:"<namespace:path>", target:"<block>"}
# /!\ Reserved player in scoreboard : $blockRaycast /!\

$function utils:raycasting/endpoint/initialization {class:"$(class)", maxStep:"$(maxStep)", variable:"$blockRaycast"}
$function utils:raycasting/block/loop {callback:"$(callback)", class:"$(class)", step:"$(step)", storage:"$(storage)", target:"$(target)"}