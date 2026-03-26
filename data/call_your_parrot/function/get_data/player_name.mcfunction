execute at @s run loot spawn ~ ~100 ~ loot call_your_parrot:player_head
data modify storage call_your_parrot:root data.player_name set from entity @e[nbt={Item:{components:{"minecraft:custom_data":{callyourcat_playername:1b}}}},limit=1] Item.components."minecraft:profile".name
kill @e[nbt={Item:{components:{"minecraft:custom_data":{callyourcat_playername:1b}}}}]