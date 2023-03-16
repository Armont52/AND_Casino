execute as @a[tag=slot_player] run function casino:bet/invencheck

execute if score bet AND_Slot_Machine matches 10 as @a[tag=slot_player] run scoreboard players operation @s chips -= #10 chips_calc
execute if score bet AND_Slot_Machine matches 50 as @a[tag=slot_player] run scoreboard players operation @s chips -= #50 chips_calc
execute if score bet AND_Slot_Machine matches 100 as @a[tag=slot_player] run scoreboard players operation @s chips -= #100 chips_calc
function casino:slot_machine/1bet/change

clear @a[tag=slot_player] firework_star{display:{Lore:['{"text":"Nautilus Casino"}']}}
execute as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run data remove block ~1 ~-1 ~ Items
execute as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run data modify block ~1 ~-1 ~ Items set from storage minecraft:slot_pay Inventory
execute as @e[type=minecraft:glow_item_frame,tag=reel2,limit=1] at @s run loot give @a[tag=slot_player] mine ~1 ~-1 ~ air{drop_contents: 1b}