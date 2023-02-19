execute as @e[type=minecraft:glow_item_frame,tag=reel1,limit=1] at @s if score is_spinning1 AND_Slot_Machine matches 1 run loot replace entity @s container.0 loot casino:chests/slot_reel1
