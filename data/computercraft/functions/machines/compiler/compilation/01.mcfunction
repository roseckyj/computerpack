#######
# Compiled from machines/compiler/compilation/01_merge.mcscript
# to .//data/computercraft/functions/machines/compiler/compilation/01.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute if data block ~ ~ ~ Items[{Slot:11b}].tag.compilation.source[0][] run data modify block ~ ~ ~ Items[{Slot:11b}].tag.compilation.merged append from block ~ ~ ~ Items[{Slot:11b}].tag.compilation.source[0][0]
execute if data block ~ ~ ~ Items[{Slot:11b}].tag.compilation.source[0][] run data remove block ~ ~ ~ Items[{Slot:11b}].tag.compilation.source[0][0]
execute unless data block ~ ~ ~ Items[{Slot:11b}].tag.compilation.source[0][] run data remove block ~ ~ ~ Items[{Slot:11b}].tag.compilation.source[0]