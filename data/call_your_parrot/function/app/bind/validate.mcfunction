execute as @e[predicate=call_your_parrot:callable,limit=1,tag=jodek.bind_target] run function jodek:api/data/get/owner with storage call_your_parrot:root data

execute store success score &UUID_check call_your_parrot.check run data modify storage call_your_parrot:root data.Owner set from entity @s UUID

execute if score &UUID_check call_your_parrot.check matches 1 run \
  return run function call_your_parrot:app/feedback/fail {translate:"call_your_parrot.fail.no_owner",fallback:"You're not the owner of this parrot"}

execute if score &UUID_check call_your_parrot.check matches 0 run function call_your_parrot:app/bind/get_data