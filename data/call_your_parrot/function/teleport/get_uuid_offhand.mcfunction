data modify storage call_your_parrot:root data.cat_UUID_from_horn set from entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tag:{goat_horn_to_call_cat:1b}}}}}}] equipment.offhand.components."minecraft:custom_data".cat_call.UUID

function call_your_parrot:teleport/check_for_teleport with storage call_your_parrot:root data