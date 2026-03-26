$execute in minecraft:overworld run forceload remove $(cat_UUID_latest_position_x_forceload) $(cat_UUID_latest_position_z_forceload)
$execute in minecraft:the_nether run forceload remove $(cat_UUID_latest_position_x_forceload) $(cat_UUID_latest_position_z_forceload)
$execute in minecraft:the_end run forceload remove $(cat_UUID_latest_position_x_forceload) $(cat_UUID_latest_position_z_forceload)

# data remove storage call_your_parrot:root data.cat_UUID_latest_position_x 
# data remove storage call_your_parrot:root data.cat_UUID_latest_position_z 
# data remove storage call_your_parrot:root data.cat_UUID_latest_position_x_forceload
# data remove storage call_your_parrot:root data.cat_UUID_latest_position_z_forceload
# data remove storage call_your_parrot:root data.cat_UUID_from_horn
# data remove storage call_your_parrot:root data.UUID
# data remove storage call_your_parrot:root data.player_UUID
# data remove storage call_your_parrot:root data.cat_name_from_cat