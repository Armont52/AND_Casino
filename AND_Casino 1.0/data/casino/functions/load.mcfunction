scoreboard objectives add AND_Slot_Machine dummy
scoreboard objectives add AND_Slot_Machine_Selector trigger
scoreboard objectives add chips dummy
scoreboard objectives add chips_calc dummy
scoreboard players set is_playing AND_Slot_Machine -2
scoreboard players set bet AND_Slot_Machine 0
scoreboard players set is_spinning1 AND_Slot_Machine 0
scoreboard players set is_spinning2 AND_Slot_Machine 0
scoreboard players set is_spinning3 AND_Slot_Machine 0
scoreboard players set #10 AND_Slot_Machine 10
scoreboard players set #5 chips_calc 5
scoreboard players set #10 chips_calc 10
scoreboard players set #50 chips_calc 50
scoreboard players set #100 chips_calc 100
scoreboard players set #500 chips_calc 500
scoreboard players set #1000 chips_calc 1000
scoreboard players set pay AND_Slot_Machine 0
tellraw @a ["",{"text":"["},{"text":"AND","color":"aqua"},{"text":"] Casino system 1.0 is loaded."}]