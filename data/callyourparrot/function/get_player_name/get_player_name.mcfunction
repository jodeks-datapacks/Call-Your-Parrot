loot spawn ~ ~100 ~ loot callyourparrot:player_head
data modify storage callyourparrot:root player_name set from entity @e[nbt={Item:{components:{"minecraft:custom_data":{callyourparrot_playername:1b}}}},limit=1] Item.components."minecraft:profile".name
kill @e[nbt={Item:{components:{"minecraft:custom_data":{callyourparrot_playername:1b}}}}]