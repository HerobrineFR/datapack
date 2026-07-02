#Augmente le temps de despawn des items à 10 minutes lorsques ils sont droppés à la mort d'un joueur.
execute as @a at @s if score @s death matches 1.. run function herobrine:items_timer/extend_timer