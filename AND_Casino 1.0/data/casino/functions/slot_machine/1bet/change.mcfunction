data remove storage minecraft:slot_pay Inventory
execute if score @s chips matches 1000.. run function casino:slot_machine/1bet/1000
execute if score @s chips matches 500.. run function casino:slot_machine/1bet/500
execute if score @s chips matches 100.. run function casino:slot_machine/1bet/100
execute if score @s chips matches 50.. run function casino:slot_machine/1bet/50
execute if score @s chips matches 10.. run function casino:slot_machine/1bet/10
execute if score @s chips matches 5.. run function casino:slot_machine/1bet/5
execute if score @s chips matches 1.. run function casino:slot_machine/1bet/1