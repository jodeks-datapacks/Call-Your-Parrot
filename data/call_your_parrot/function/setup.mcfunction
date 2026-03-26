scoreboard objectives add jodek.config dummy
execute unless score &call_your_parrot_load_message jodek.config = &call_your_parrot_load_message jodek.config run scoreboard players set &call_your_parrot_load_message jodek.config 1
execute unless score &call_your_parrot_advancements jodek.config = &call_your_parrot_advancements jodek.config run scoreboard players set &call_your_parrot_advancements jodek.config 1

scoreboard objectives add check.call_your_parrot dummy

scoreboard objectives add use_goat_horn_cat minecraft.used:minecraft.goat_horn

scoreboard objectives add store_position.call_your_parrot dummy

scoreboard objectives add sneak_time.call_your_parrot custom:sneak_time

scoreboard objectives add call_your_parrot.image dummy

scoreboard objectives add raycast_steps.call_your_parrot dummy

scoreboard players set @a sneak_time.call_your_parrot 0

scoreboard players set @a use_goat_horn_cat 0
scoreboard players set &time_since_goat_horn_use check.call_your_parrot 0

scoreboard players set &teleported check.call_your_parrot 0

function call_your_parrot:config/image

schedule function call_your_parrot:schedule_save_uuid 1s