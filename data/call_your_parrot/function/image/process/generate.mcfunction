#> call_your_parrot:image/process/generate
#
# This function generates the image data.

data modify storage call_your_parrot:image data.current.image_data set from storage call_your_parrot:image data.image_data
data modify storage call_your_parrot:image data.current.description set from storage call_your_parrot:image data.description
data modify storage call_your_parrot:image data.current.pixel_character set from storage call_your_parrot:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data call_your_parrot.image 0
# Set width
execute store result score $width call_your_parrot.image run data get storage call_your_parrot:image data.width
# Set height
execute store result score $height call_your_parrot.image run data get storage call_your_parrot:image data.height
# Set length
scoreboard players operation $length call_your_parrot.image = $width call_your_parrot.image
scoreboard players operation $length call_your_parrot.image *= $height call_your_parrot.image
# Clear remaining entries in tellraw
data remove storage call_your_parrot:image data.tellraw

# Add spacing on top
function call_your_parrot:image/process/append/line_break
# Loop over image data
function call_your_parrot:image/process/loop_over_image_data
# Add spacing on bottom
function call_your_parrot:image/process/append/line_break