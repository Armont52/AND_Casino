execute as @e[type=minecraft:glow_item_frame,tag=reel3,limit=1] at @s run setblock ~-1 ~ ~1 minecraft:air
execute as @e[type=minecraft:glow_item_frame,tag=reel3,limit=1] at @s run setblock ~-1 ~ ~1 minecraft:lever[face=wall,facing=west,powered=false]

execute if score is_playing AND_Slot_Machine matches 2 run schedule function casino:slot_machine/2spin/stop1 3.5s
execute if score is_playing AND_Slot_Machine matches 2 run schedule function casino:slot_machine/2spin/stop2 4s
execute if score is_playing AND_Slot_Machine matches 2 run schedule function casino:slot_machine/2spin/stop3 4.5s
execute if score is_playing AND_Slot_Machine matches 2 run scoreboard players set is_spinning1 AND_Slot_Machine 1
execute if score is_playing AND_Slot_Machine matches 2 run scoreboard players set is_spinning2 AND_Slot_Machine 1
execute if score is_playing AND_Slot_Machine matches 2 run scoreboard players set is_spinning3 AND_Slot_Machine 1
scoreboard players set is_playing AND_Slot_Machine 3
execute if score is_spinning1 AND_Slot_Machine matches 1 run schedule function casino:slot_machine/2spin/spin1 1t
execute if score is_spinning2 AND_Slot_Machine matches 1 run schedule function casino:slot_machine/2spin/spin2 1t
execute if score is_spinning3 AND_Slot_Machine matches 1 run schedule function casino:slot_machine/2spin/spin3 1t
execute if score is_spinning3 AND_Slot_Machine matches 0 if score is_spinning2 AND_Slot_Machine matches 0 if score is_spinning1 AND_Slot_Machine matches 0 run scoreboard players set is_playing AND_Slot_Machine 4