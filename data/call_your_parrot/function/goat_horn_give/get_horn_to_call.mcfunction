scoreboard players set #max raycast_steps.call_your_parrot 320
scoreboard players reset #steps raycast_steps.call_your_parrot

# Tag parrot the player is looking at
execute as @a[predicate=call_your_parrot:looking_at] at @s anchored eyes positioned ^ ^ ^0.2 run function call_your_parrot:goat_horn_give/raycast

function call_your_parrot:get_data/goat_horn_slot

function call_your_parrot:get_data/goat_horn_instrument

function call_your_parrot:get_data/player_name

# get parrot UUID to store in goat horn
data modify storage call_your_parrot:root data.cat_UUID_to_call set from entity @e[limit=1,tag=cat_to_call] UUID

# get parrot name
data modify storage call_your_parrot:root data.cat_name set from entity @e[limit=1,tag=cat_to_call] CustomName

# execute give goat horn
execute as @s at @s if entity @e[limit=1,tag=cat_to_call] run function call_your_parrot:goat_horn_give/goat_horn_give_macro with storage call_your_parrot:root data

tag @e[tag=cat_to_call] remove cat_to_call

data remove storage call_your_parrot:root data.UUID
data remove storage call_your_parrot:root data.goat_horn_slot
data remove storage call_your_parrot:root data.goat_horn_instrument
data remove storage call_your_parrot:root data.cat_UUID_to_call
data remove storage call_your_parrot:root data.cat_name
data remove storage call_your_parrot:root data.player_name