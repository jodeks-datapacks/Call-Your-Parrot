tellraw @a ["",{"text":"Call Your Parrot","color":"blue","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-parrot"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-parrot"}},{"text":" loaded - ","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-parrot"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-parrot"}},{"text":"[1.21]","color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-parrot"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-parrot"}},{"text":" ","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-parrot"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-parrot"}},{"text":"v.1.0.0","color":"dark_green","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-parrot"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-parrot"}}]

scoreboard objectives add help.callyourparrot trigger

scoreboard objectives add config.callyourparrot dummy

scoreboard objectives add check.callyourparrot dummy

scoreboard objectives add use_goat_horn_parrot minecraft.used:minecraft.goat_horn

scoreboard objectives add store_position.callyourparrot dummy

scoreboard objectives add sneak_time.callyourparrot custom:sneak_time

scoreboard players set @a sneak_time.callyourparrot 0

scoreboard players set @a use_goat_horn_parrot 0
