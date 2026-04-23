schedule function call_your_parrot:app/schedule/save/run 1s

execute as @e[predicate=call_your_parrot:callable,tag=jodek.can_be_called] run function call_your_parrot:app/schedule/save/save_uuid with storage call_your_parrot:root data