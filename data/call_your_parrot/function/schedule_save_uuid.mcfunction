schedule function call_your_parrot:schedule_save_uuid 1s

# save parrot position
execute as @e[type=parrot,tag=cat_can_called] run function call_your_parrot:teleport/save_uuid with storage call_your_parrot:root data