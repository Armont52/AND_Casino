scoreboard players set is_playing AND_Slot_Machine 5

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
execute if score reel1 AND_Slot_Machine matches 7 unless score reel2 AND_Slot_Machine matches 7 unless score reel3 AND_Slot_Machine matches 7 run scoreboard players set profit AND_Slot_Machine 1
execute unless score reel1 AND_Slot_Machine matches 7 if score reel2 AND_Slot_Machine matches 7 unless score reel3 AND_Slot_Machine matches 7 run scoreboard players set profit AND_Slot_Machine 1
execute unless score reel1 AND_Slot_Machine matches 7 unless score reel2 AND_Slot_Machine matches 7 if score reel3 AND_Slot_Machine matches 7 run scoreboard players set profit AND_Slot_Machine 1

#Reward
scoreboard players operation profit AND_Slot_Machine *= bet AND_Slot_Machine
scoreboard players operation @a[tag=slot_player] chips = profit AND_Slot_Machine
execute as @a[tag=slot_player] run function casino:slot_machine/1bet/change
execute as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run data remove block ~1 ~-1 ~ Items
execute as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run data modify block ~1 ~-1 ~ Items set from storage minecraft:slot_pay Inventory
execute as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run loot give @a[tag=slot_player] mine ~1 ~-1 ~ air{drop_contents: 1b}

#효과
execute if score profit AND_Slot_Machine matches 10.. as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run playsound minecraft:item.goat_horn.sound.1 ambient @a ~ ~ ~ 1 1.8
execute if score profit AND_Slot_Machine matches 10 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 10 force
execute if score profit AND_Slot_Machine matches 20 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 20 force
execute if score profit AND_Slot_Machine matches 30 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 30 force
execute if score profit AND_Slot_Machine matches 50 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 50 force
execute if score profit AND_Slot_Machine matches 100 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 100 force
execute if score profit AND_Slot_Machine matches 150 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 150 force
execute if score profit AND_Slot_Machine matches 200 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 200 force
execute if score profit AND_Slot_Machine matches 250 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 250 force
execute if score profit AND_Slot_Machine matches 300 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 300 force
execute if score profit AND_Slot_Machine matches 500 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 500 force
execute if score profit AND_Slot_Machine matches 1000 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 1000 force
execute if score profit AND_Slot_Machine matches 2500 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 2500 force
execute if score profit AND_Slot_Machine matches 5000 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 5000 force
execute if score profit AND_Slot_Machine matches 10000 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 10000 force
execute if score profit AND_Slot_Machine matches 50000 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 50000 force
execute if score profit AND_Slot_Machine matches 100000 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run particle minecraft:totem_of_undying ~-0.6 ~-1 ~ 0 0 0.2 0.01 100000 force
execute if score reel AND_Slot_Machine matches 111 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run summon firework_rocket ~ ~2 ~2 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:1}}}}
execute if score reel AND_Slot_Machine matches 111 as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run summon firework_rocket ~ ~2 ~-2 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:1}}}}

#Back to Betting
scoreboard players set is_playing AND_Slot_Machine -1