scoreboard objectives add jodek.config dummy
execute unless score &call_your_cat_load_message jodek.config = &call_your_cat_load_message jodek.config run scoreboard players set &call_your_cat_load_message jodek.config 1
execute unless score &call_your_cat_advancements jodek.config = &call_your_cat_advancements jodek.config run scoreboard players set &call_your_cat_advancements jodek.config 1

scoreboard objectives add call_your_parrot.check dummy

scoreboard objectives add call_your_parrot.image dummy

scoreboard objectives add call_your_parrot.config trigger
scoreboard players set @a call_your_parrot.config 0

scoreboard players set &time_since_goat_horn_use call_your_parrot.check 0

scoreboard players set &teleported call_your_parrot.check 0

scoreboard players set &mounted call_your_parrot.check 0

function call_your_parrot:config/image

schedule function call_your_parrot:app/schedule/save/run 1s

data modify storage call_your_parrot:root data.target set value call_your_parrot

schedule function call_your_parrot:lib_check 1s

scoreboard objectives add call_your_parrot.sneak_time custom:sneak_time
scoreboard players set @a call_your_parrot.sneak_time 0