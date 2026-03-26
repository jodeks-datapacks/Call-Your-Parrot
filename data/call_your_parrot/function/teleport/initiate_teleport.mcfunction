
scoreboard players add &time_since_goat_horn_use check.call_your_parrot 1

execute if score &time_since_goat_horn_use check.call_your_parrot matches 1 run function call_your_parrot:teleport/teleport/forceload_add with storage call_your_parrot:root data

$execute if score &teleported check.call_your_parrot matches 0 if entity @e[nbt={UUID:$(cat_UUID_from_horn)}] run function call_your_parrot:teleport/teleport/teleport with storage call_your_parrot:root data

execute if score &time_since_goat_horn_use check.call_your_parrot matches 25 run function call_your_parrot:teleport/teleport/forceload_remove with storage call_your_parrot:root data



execute if score &time_since_goat_horn_use check.call_your_parrot matches 26.. run scoreboard players set &teleported check.call_your_parrot 0

execute if score &time_since_goat_horn_use check.call_your_parrot matches 26.. run scoreboard players set &mounted check.call_your_parrot 0

execute if score &time_since_goat_horn_use check.call_your_parrot matches 26.. run scoreboard players set &time_since_goat_horn_use check.call_your_parrot 0

execute if score &time_since_goat_horn_use check.call_your_parrot matches 1.. run schedule function call_your_parrot:teleport/call_initiate 1t