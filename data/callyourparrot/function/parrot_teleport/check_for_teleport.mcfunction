scoreboard players set &UUID_check check.callyourparrot 1


data modify storage callyourparrot:root parrot_UUID_from_horn set from entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tag:{goat_horn_to_call_parrot:2b}}}}}] SelectedItem.components."minecraft:custom_data".parrot_call.UUID

data modify storage callyourparrot:root UUID set from entity @s UUID

function callyourparrot:goat_horn_give/check_parrot_uuid_match_horn_uuid with storage callyourparrot:root


execute if score &UUID_check check.callyourparrot matches 0 run data modify storage callyourparrot:root player_UUID set from entity @s UUID

execute if score &UUID_check check.callyourparrot matches 0 run data modify storage callyourparrot:root parrot_name_from_horn set from entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tag:{goat_horn_to_call_parrot:2b}}}}}] SelectedItem.components."minecraft:custom_name"



execute if score &UUID_check check.callyourparrot matches 0 run function callyourparrot:parrot_teleport/get_latest_position with storage callyourparrot:root


execute if score &UUID_check check.callyourparrot matches 0 run execute store result score parrot_UUID_lates_position_x store_position.callyourparrot run data get storage callyourparrot:root parrot_UUID_latest_position_x

execute if score &UUID_check check.callyourparrot matches 0 run execute store result score parrot_UUID_lates_position_z store_position.callyourparrot run data get storage callyourparrot:root parrot_UUID_latest_position_z

execute if score &UUID_check check.callyourparrot matches 0 run execute store result storage callyourparrot:root parrot_UUID_latest_position_x int 1 run scoreboard players get parrot_UUID_lates_position_x store_position.callyourparrot

execute if score &UUID_check check.callyourparrot matches 0 run execute store result storage callyourparrot:root parrot_UUID_latest_position_z int 1 run scoreboard players get parrot_UUID_lates_position_z store_position.callyourparrot


execute if score &UUID_check check.callyourparrot matches 0 run function callyourparrot:parrot_teleport/teleport_parrot with storage callyourparrot:root

scoreboard players set &UUID_check check.callyourparrot 1




