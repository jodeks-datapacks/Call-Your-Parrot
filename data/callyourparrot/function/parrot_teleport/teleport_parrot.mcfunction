$execute if score time_since_goat_horn_use check.callyourparrot matches 1 run forceload add $(parrot_UUID_latest_position_x) $(parrot_UUID_latest_position_z)

$execute if score time_since_goat_horn_use check.callyourparrot matches 4 run teleport @e[type=parrot,nbt={Owner:$(player_UUID),UUID:$(parrot_UUID_from_horn)}] @s

$execute if score time_since_goat_horn_use check.callyourparrot matches 7 run forceload remove $(parrot_UUID_latest_position_x) $(parrot_UUID_latest_position_z)



data remove storage callyourparrot:root parrot_UUID_latest_position_x 
data remove storage callyourparrot:root parrot_UUID_latest_position_z 
data remove storage callyourparrot:root parrot_UUID_from_horn
data remove storage callyourparrot:root UUID
data remove storage callyourparrot:root player_UUID
data remove storage callyourparrot:root parrot_name_from_horn

