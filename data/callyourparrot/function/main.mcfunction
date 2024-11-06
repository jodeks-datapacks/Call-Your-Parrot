# help
scoreboard players enable @a help.callyourparrot
execute as @a if score @s help.callyourparrot matches 1 run function callyourparrot:trigger_help

# initiate parrot teleport
tag @a[scores={use_goat_horn_parrot=1},limit=1] add calling_parrot

execute as @a[scores={use_goat_horn_parrot=1}] run function callyourparrot:parrot_teleport/check_for_teleport

execute as @a[scores={use_goat_horn_parrot=1}] run scoreboard players add time_since_goat_horn_use check.callyourparrot 1

tag @a[scores={use_goat_horn_parrot=0},limit=1] remove calling_parrot

# time counter for parrot teleport function
execute if score time_since_goat_horn_use check.callyourparrot matches 8 run scoreboard players set @a use_goat_horn_parrot 0
execute if score time_since_goat_horn_use check.callyourparrot matches 8 run scoreboard players set time_since_goat_horn_use check.callyourparrot 0

# save parrot position
execute as @e[type=wolf,tag=parrot_can_be_called] run function callyourparrot:parrot_teleport/save_uuid with storage callyourparrot:root

# sneak time counter
execute as @a[scores={sneak_time.callyourparrot=40..}] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] run function callyourparrot:goat_horn_give/get_horn_to_call

execute as @a[scores={sneak_time.callyourparrot=50..}] run scoreboard players set @a sneak_time.callyourparrot 0

