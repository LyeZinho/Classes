#Not Enough Mana
execute if entity @s[scores={cl.Mana=..2}] run function classes:mage/mana/nomana

#Give Effect
execute as @s[scores={cl.Mana=3..}] run effect give @s minecraft:dolphins_grace 60 0 false

#Particle effect
execute as @a[scores={cl.Mana=3..}] at @s run particle minecraft:falling_water ~ ~ ~ 1 1 1 10 40 normal

#Playsound Effect
execute at @s[scores={cl.Mana=3..}] run playsound minecraft:block.water.ambient player @a ~ ~ ~ 1 1
execute at @s[scores={cl.Mana=3..}] run playsound minecraft:entity.dolphin.play player @a ~ ~ ~ 1 1

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=3..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute as @s[scores={cl.Mana=3..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Dolphin's Grace!","bold":true,"color":"#0096FF"}]

#Cooldown
execute as @s[scores={cl.Mana=3..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute as @s[scores={cl.Mana=3..}] run scoreboard players remove @s cl.Mana 3
