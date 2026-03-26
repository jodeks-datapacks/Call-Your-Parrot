$item replace entity @s hotbar.$(goat_horn_slot) with goat_horn[instrument="$(goat_horn_instrument)"]

$tag @e[type=parrot,tag=cat_can_called,nbt={UUID:$(cat_UUID_from_horn)}] remove cat_can_called

$data remove storage call_your_parrot:root data.cat_Pos."$(cat_UUID_from_horn).x"

$data remove storage call_your_parrot:root data.cat_Pos."$(cat_UUID_from_horn).z"

data remove storage call_your_parrot:root data.goat_horn_instrument
data remove storage call_your_parrot:root data.goat_horn_slot
data remove storage call_your_parrot:root data.cat_UUID_from_horn
