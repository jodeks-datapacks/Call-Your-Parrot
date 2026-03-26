
execute as @a[scores={use_goat_horn_cat=1..},nbt={SelectedItem:{id:"minecraft:goat_horn",components:{"minecraft:custom_data":{tag:{goat_horn_to_call_cat:1b}}}}}] run function call_your_parrot:teleport/get_uuid_selected_item

execute as @a[scores={use_goat_horn_cat=1..},nbt={equipment:{offhand:{id:"minecraft:goat_horn",components:{"minecraft:custom_data":{tag:{goat_horn_to_call_cat:1b}}}}}}] run function call_your_parrot:teleport/get_uuid_offhand

scoreboard players set @a use_goat_horn_cat 0

# sneak time counter
execute as @a[scores={sneak_time.call_your_parrot=40..}] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] run function call_your_parrot:goat_horn_give/get_horn_to_call

execute as @a[x_rotation=-90,scores={sneak_time.call_your_parrot=40..}] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] run function call_your_parrot:reset_goat_horn/get_data

execute as @a[scores={sneak_time.call_your_parrot=40..}] run scoreboard players set @a sneak_time.call_your_parrot 0