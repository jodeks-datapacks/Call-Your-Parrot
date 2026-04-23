execute as @a[scores={call_your_parrot.sneak_time=40..}] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] run function call_your_parrot:app/bind/start

execute as @a[x_rotation=-90,scores={call_your_parrot.sneak_time=40..}] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] run function call_your_parrot:app/reset/start

execute as @a[scores={call_your_parrot.sneak_time=40..}] run scoreboard players set @a call_your_parrot.sneak_time 0