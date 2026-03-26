$teleport @e[nbt={Owner:$(player_UUID),UUID:$(cat_UUID_from_horn)}] @a[nbt={UUID:$(player_UUID)},limit=1]

scoreboard players set &teleported check.call_your_parrot 1