# Args : {class:"<objective>", storage:"<namespace:path>"}
# /!\ Reserved player in scoreboard : $maxId /!\

$execute store result score $maxId $(class) run data get storage $(storage) id.max
$execute store result storage $(storage) id.active[-1].id int 1 store result storage $(storage) id.max int 1 run scoreboard players add $maxId $(class) 1
$scoreboard players reset $maxId $(class)