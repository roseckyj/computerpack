#######
# Compiled from machines/robot/enqueue/reverse.mcscript
# to .//data/computercraft/functions/machines/robot/enqueue/reverse.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute if data entity @s HandItems[0].tag.execution.to_enqueue[] run data modify entity @s HandItems[0].tag.execution.to_enqueue_reversed prepend from entity @s HandItems[0].tag.execution.to_enqueue[0]
execute if data entity @s HandItems[0].tag.execution.to_enqueue[] run data remove entity @s HandItems[0].tag.execution.to_enqueue[0]
execute if data entity @s HandItems[0].tag.execution.to_enqueue[] run function computercraft:machines/robot/enqueue/reverse
