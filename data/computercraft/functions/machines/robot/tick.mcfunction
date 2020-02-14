#######
# Compiled from functions/machines/robot/tick.mcscript
# to .//data/computercraft/functions/machines/robot/tick.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute unless data entity @s HandItems[0].tag.execution.queue[] run data modify entity @s HandItems[0].tag.execution.to_enqueue set from entity @s HandItems[0].tag.compiled
execute unless data entity @s HandItems[0].tag.execution.queue[] run function computercraft:machines/robot/enqueue/main

execute as @e[tag=CC_Robot_Body] at @s store result score @s currentRotation run data get entity @s Rotation[0]
scoreboard players operation @e[tag=CC_Robot_Body] currentRotation += CC maxAngle
scoreboard players operation @e[tag=CC_Robot_Body] currentRotation %= CC maxAngle
execute as @e[tag=CC_Robot_Body] at @s run setblock ~ ~2 ~ minecraft:air destroy
execute if data entity @s HandItems[0].tag.execution.queue[] run data modify entity @s HandItems[0].tag.execution.temp set from entity @s HandItems[0].tag.execution.queue[0]
execute unless data entity @s HandItems[0].tag.execution.queue[] run data modify entity @s HandItems[0].tag.execution.temp set value {}
data remove entity @s HandItems[0].tag.execution.queue[0]
execute if data entity @s HandItems[0].tag.execution.temp{type:1} if data entity @s HandItems[0].tag.execution.temp{cmd:24002} run function computercraft:machines/robot/cmd/fwd
execute if data entity @s HandItems[0].tag.execution.temp{type:1} if data entity @s HandItems[0].tag.execution.temp{cmd:24003} run function computercraft:machines/robot/cmd/right
execute if data entity @s HandItems[0].tag.execution.temp{type:1} if data entity @s HandItems[0].tag.execution.temp{cmd:24004} run function computercraft:machines/robot/cmd/left
execute if data entity @s HandItems[0].tag.execution.temp{type:1} if data entity @s HandItems[0].tag.execution.temp{cmd:24006} run function computercraft:machines/robot/cmd/mine
execute if data entity @s HandItems[0].tag.execution.temp{type:1} if data entity @s HandItems[0].tag.execution.temp{cmd:24007} run function computercraft:machines/robot/cmd/up
execute if data entity @s HandItems[0].tag.execution.temp{type:1} if data entity @s HandItems[0].tag.execution.temp{cmd:24008} run function computercraft:machines/robot/cmd/down
execute if data entity @s HandItems[0].tag.execution.temp{type:1} if data entity @s HandItems[0].tag.execution.temp{cmd:24009} run function computercraft:machines/robot/cmd/back
execute if data entity @s HandItems[0].tag.execution.temp{type:1} if data entity @s HandItems[0].tag.execution.temp{cmd:24016} run function computercraft:machines/robot/cmd/mine_up
execute if data entity @s HandItems[0].tag.execution.temp{type:1} if data entity @s HandItems[0].tag.execution.temp{cmd:24017} run function computercraft:machines/robot/cmd/mine_down
execute if data entity @s HandItems[0].tag.execution.temp{type:1} if data entity @s HandItems[0].tag.execution.temp{cmd:24018} run function computercraft:machines/robot/cmd/hit

execute if data entity @s HandItems[0].tag.execution.temp{type:3} run setblock ~ 0 ~ minecraft:bedrock replace
execute if data entity @s HandItems[0].tag.execution.temp{type:3} run clone ~0 ~1 ~0 ~0 ~1 ~0 ~ 1 ~ replace
execute if data entity @s HandItems[0].tag.execution.temp{type:3} run setblock ~ 1 ~ minecraft:air destroy
execute if data entity @s HandItems[0].tag.execution.temp{type:3} run data modify entity @s HandItems[0].tag.execution.block set from entity @e[limit=1,sort=nearest,y=1,distance=0..1,type=item] Item.id
execute if data entity @s HandItems[0].tag.execution.temp{type:3} run setblock ~ 1 ~ minecraft:bedrock replace
execute if data entity @s HandItems[0].tag.execution.temp{type:3} run kill @e[limit=1,sort=nearest,y=0,distance=0..2,type=item]
execute if data entity @s HandItems[0].tag.execution.temp{type:3} store success entity @s HandItems[0].tag.execution.block_not_match byte 1 run data modify entity @s HandItems[0].tag.execution.block set from entity @s HandItems[0].tag.execution.temp.condition[0].id
execute if data entity @s HandItems[0].tag.execution.temp{type:3} if data entity @s HandItems[0].tag.execution{block_not_match:0b} run data modify entity @s HandItems[0].tag.execution.to_enqueue set from entity @s HandItems[0].tag.execution.temp.then
execute if data entity @s HandItems[0].tag.execution.temp{type:3} unless data entity @s HandItems[0].tag.execution{block_not_match:0b} run data modify entity @s HandItems[0].tag.execution.to_enqueue set from entity @s HandItems[0].tag.execution.temp.else
execute if data entity @s HandItems[0].tag.execution.temp{type:3} run function computercraft:machines/robot/enqueue/main
