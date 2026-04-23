scoreboard players set &UUID_check call_your_parrot.check 1

execute as @a[predicate=call_your_parrot:looking_at_callable] as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function jodek:api/call_your/raycast/start_ray

execute as @s at @s if entity @e[tag=jodek.bind_target,distance=..10] run function call_your_parrot:app/bind/validate

tag @e[tag=jodek.bind_target] remove jodek.bind_target

data remove storage call_your_parrot:root data.selected_item_slot
data remove storage call_your_parrot:root data.custom_name
data remove storage call_your_parrot:root data.player_name
data remove storage call_your_parrot:root data.UUID
data remove storage call_your_parrot:root data.instrument
data remove storage call_your_parrot:root data.audioplayer
data remove storage call_your_parrot:root data.Owner