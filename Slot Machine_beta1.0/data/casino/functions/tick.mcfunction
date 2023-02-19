scoreboard players enable @a AND_Slot_Machine_Selector
execute as @e[type=minecraft:glow_item_frame,tag=reel3,limit=1] if score is_playing AND_Slot_Machine matches 0 at @s if block ~-1 ~ ~1 minecraft:lever[face=wall,facing=west,powered=true] run scoreboard players set is_playing AND_Slot_Machine 1
execute if score is_playing AND_Slot_Machine matches 1..2 run function casino:slot_machine/spin_control
execute if score is_playing AND_Slot_Machine matches 3 run function casino:slot_machine/test
