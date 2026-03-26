data modify storage call_your_parrot:root data.player_UUID set from entity @s UUID

function call_your_parrot:teleport/get_latest_position with storage call_your_parrot:root data


execute store result score cat_UUID_lates_position_x store_position.call_your_parrot run data get storage call_your_parrot:root data.cat_UUID_latest_position_x

execute store result score cat_UUID_lates_position_z store_position.call_your_parrot run data get storage call_your_parrot:root data.cat_UUID_latest_position_z

execute store result storage call_your_parrot:root data.cat_UUID_latest_position_x int 1 run scoreboard players get cat_UUID_lates_position_x store_position.call_your_parrot

execute store result storage call_your_parrot:root data.cat_UUID_latest_position_z int 1 run scoreboard players get cat_UUID_lates_position_z store_position.call_your_parrot


schedule function call_your_parrot:teleport/call_initiate 1t