$data modify entity @s data.retraite.id set value $(temp)
$data modify entity @s data.retraite.x set from storage thurgie:waystones waypoints[$(temp)].x
$data modify entity @s data.retraite.y set from storage thurgie:waystones waypoints[$(temp)].y
$data modify entity @s data.retraite.z set from storage thurgie:waystones waypoints[$(temp)].z
$data modify entity @s data.retraite.dim set from storage thurgie:waystones waypoints[$(temp)].world