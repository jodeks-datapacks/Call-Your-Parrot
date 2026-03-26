function call_your_parrot:get_data/goat_horn_instrument
function call_your_parrot:get_data/goat_horn_slot

data modify storage call_your_parrot:root data.cat_UUID_from_horn set from entity @s SelectedItem.components."minecraft:custom_data".cat_call.UUID

function call_your_parrot:reset_goat_horn/reset with storage call_your_parrot:root data