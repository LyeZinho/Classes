#Restore Mana if potion is drank
scoreboard players add @s cl.Mana 8

#Sound effect if potion drank
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 10 2

#Check hand
execute if entity @s[predicate=classes:items/manapotion/mainhand] run function classes:items/manapotion/mainhand
execute if entity @s[predicate=classes:items/manapotion/offhand] run function classes:items/manapotion/offhand
