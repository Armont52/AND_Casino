scoreboard players set is_playing AND_Slot_Machine 4

#Reel1
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel1,limit=1] {Item: {id:"minecraft:player_head"}} run scoreboard players set reel1 AND_Slot_Machine 1
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel1,limit=1] {Item: {id:"minecraft:iron_ingot"}} run scoreboard players set reel1 AND_Slot_Machine 2
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel1,limit=1] {Item: {id:"minecraft:bell"}} run scoreboard players set reel1 AND_Slot_Machine 3
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel1,limit=1] {Item: {id:"minecraft:apple"}} run scoreboard players set reel1 AND_Slot_Machine 4
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel1,limit=1] {Item: {id:"minecraft:melon_slice"}} run scoreboard players set reel1 AND_Slot_Machine 5
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel1,limit=1] {Item: {id:"minecraft:sweet_berries"}} run scoreboard players set reel1 AND_Slot_Machine 6
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel1,limit=1] {Item: {id:"minecraft:glow_berries"}} run scoreboard players set reel1 AND_Slot_Machine 7

#Reel2
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] {Item: {id:"minecraft:player_head"}} run scoreboard players set reel2 AND_Slot_Machine 1
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] {Item: {id:"minecraft:iron_ingot"}} run scoreboard players set reel2 AND_Slot_Machine 2
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] {Item: {id:"minecraft:bell"}} run scoreboard players set reel2 AND_Slot_Machine 3
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] {Item: {id:"minecraft:apple"}} run scoreboard players set reel2 AND_Slot_Machine 4
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] {Item: {id:"minecraft:melon_slice"}} run scoreboard players set reel2 AND_Slot_Machine 5
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] {Item: {id:"minecraft:sweet_berries"}} run scoreboard players set reel2 AND_Slot_Machine 6
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] {Item: {id:"minecraft:glow_berries"}} run scoreboard players set reel2 AND_Slot_Machine 7

#Reel3
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel3,limit=1] {Item: {id:"minecraft:player_head"}} run scoreboard players set reel3 AND_Slot_Machine 1
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel3,limit=1] {Item: {id:"minecraft:iron_ingot"}} run scoreboard players set reel3 AND_Slot_Machine 2
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel3,limit=1] {Item: {id:"minecraft:bell"}} run scoreboard players set reel3 AND_Slot_Machine 3
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel3,limit=1] {Item: {id:"minecraft:apple"}} run scoreboard players set reel3 AND_Slot_Machine 4
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel3,limit=1] {Item: {id:"minecraft:melon_slice"}} run scoreboard players set reel3 AND_Slot_Machine 5
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel3,limit=1] {Item: {id:"minecraft:sweet_berries"}} run scoreboard players set reel3 AND_Slot_Machine 6
execute if data entity @e[type=minecraft:glow_item_frame,tag=reel3,limit=1] {Item: {id:"minecraft:glow_berries"}} run scoreboard players set reel3 AND_Slot_Machine 7

#Reel
scoreboard players reset reel AND_Slot_Machine
scoreboard players operation reel AND_Slot_Machine += reel1 AND_Slot_Machine
scoreboard players operation reel AND_Slot_Machine *= #10 AND_Slot_Machine
scoreboard players operation reel AND_Slot_Machine += reel2 AND_Slot_Machine
scoreboard players operation reel AND_Slot_Machine *= #10 AND_Slot_Machine
scoreboard players operation reel AND_Slot_Machine += reel3 AND_Slot_Machine

#Profit
scoreboard players set profit AND_Slot_Machine 0
execute if score reel AND_Slot_Machine matches 111 run scoreboard players set profit AND_Slot_Machine 1000
execute if score reel AND_Slot_Machine matches 222 run scoreboard players set profit AND_Slot_Machine 100
execute if score reel AND_Slot_Machine matches 333 run scoreboard players set profit AND_Slot_Machine 50
execute if score reel AND_Slot_Machine matches 444 run scoreboard players set profit AND_Slot_Machine 10
execute if score reel AND_Slot_Machine matches 555 run scoreboard players set profit AND_Slot_Machine 5
execute if score reel AND_Slot_Machine matches 666 run scoreboard players set profit AND_Slot_Machine 3
execute if score reel AND_Slot_Machine matches 777 run scoreboard players set profit AND_Slot_Machine 2