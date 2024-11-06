scoreboard players set @a use_goat_horn_parrot 0

scoreboard players set &UUID_check check.callyourparrot 1

execute as @s at @s anchored eyes facing entity @e[type=parrot,sort=nearest,limit=1,distance=0..5] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 run tag @e[type=parrot,sort=nearest,limit=1] add parrot_to_call
execute as @s at @s anchored eyes facing entity @e[type=parrot,sort=nearest,limit=1,distance=0..5] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 run tag @e[type=parrot,sort=nearest,limit=1] add parrot_can_called


# compare both UUIDs
data modify storage callyourparrot:root UUID set from entity @e[type=parrot,limit=1,tag=parrot_to_call] Owner
execute store success score &UUID_check check.callyourparrot run data modify storage callyourparrot:root UUID set from entity @s UUID


# get item slot
data modify storage callyourparrot:root goat_horn_slot set from entity @s SelectedItemSlot

# get instrument
data modify storage callyourparrot:root goat_horn_instrument set from entity @s SelectedItem.components."minecraft:instrument"

# get player name
execute if score &UUID_check check.callyourparrot matches 0 run function callyourparrot:get_player_name/get_player_name


# get parrot UUID to store in goat horn
data modify storage callyourparrot:root parrot_UUID_to_call set from entity @e[type=parrot,limit=1,tag=parrot_to_call] UUID


# get parrot name
data modify storage callyourparrot:root parrot_name set from entity @e[type=parrot,limit=1,tag=parrot_to_call] CustomName


# execute give goat horn
execute as @s at @s if entity @e[sort=nearest,limit=1,type=parrot,tag=parrot_to_call] run function callyourparrot:goat_horn_give/goat_horn_give_macro with storage callyourparrot:root


scoreboard players set &UUID_check check.callyourparrot 1

tag @e remove parrot_to_call

scoreboard players set @s sneak_time.callyourparrot 0



