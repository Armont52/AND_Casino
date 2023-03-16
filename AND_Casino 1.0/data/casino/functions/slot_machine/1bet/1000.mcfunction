scoreboard players operation @a[tag=slot_player] chips_calc = @a[tag=slot_player] chips
scoreboard players operation @a[tag=slot_player] chips_calc /= #1000 chips_calc
data modify storage minecraft:slot_pay Inventory append value {Slot: 0b, id: "minecraft:firework_star", tag: {Explosion: {Type: 0, Colors: [I; 0]}, display: {Name: '[{"text":"1000","color":"yellow"},{"text":"Col","color":"green"}]', Lore: ['{"text":"Nautilus Casino"}']}}, Count: 1b}
execute store result storage minecraft:slot_pay Inventory[{id:"minecraft:firework_star",tag: {Explosion:{Colors:[I;0]}, display:{Name:'[{"text":"1000","color":"yellow"},{"text":"Col","color":"green"}]',Lore:['{"text":"Nautilus Casino"}']}}}].Count byte 1 run scoreboard players get @a[tag=slot_player,limit=1] chips_calc
scoreboard players operation @a[tag=slot_player] chips_calc *= #1000 chips_calc
scoreboard players operation @a[tag=slot_player] chips -= @a[tag=slot_player] chips_calc