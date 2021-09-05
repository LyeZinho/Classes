### calculations based on a 0.5 raycast stepsize.
### if you change raycast stepsize, change *0.5 accordingly
# how many half blocks per step (4*0.5) = 2 blocks per tick
execute unless entity @s[scores={cl.Mana=4..},x_rotation=87..90] run scoreboard players set dst_per cl.slowcast 4
# how many half blocks to travel (24*0.5) = 12 blocks
execute unless entity @s[scores={cl.Mana=4..},x_rotation=87..90] run scoreboard players set dst cl.slowcast 48

execute unless entity @s[scores={cl.Mana=4..},x_rotation=87..90] positioned ~ ~1.45 ~ run function classes:healer/spells/vitality/start



#If Player is looking at ground:
execute if entity @s[scores={cl.Mana=4..},x_rotation=87..90,distance=..1] run effect give @s minecraft:health_boost 60 1 false
execute if entity @s[scores={cl.Mana=4..},x_rotation=87..90,distance=..1] run effect give @s minecraft:instant_health 1 1 true
execute if entity @s[scores={cl.Mana=4..},x_rotation=87..90,distance=..1] run scoreboard players set @s cl.e.Vitality 1200
#Play sound effect - use here when needing once.
execute if entity @s[scores={cl.Mana=4..},x_rotation=87..90] at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 10 1.5

#Particles
execute if entity @s[scores={cl.Mana=4..},x_rotation=87..90] at @s run particle minecraft:wax_off ~ ~ ~ 0.5 1 0.5 0.01 50 force
execute if entity @s[scores={cl.Mana=4..},x_rotation=87..90] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Add Cooldown
execute if entity @s[scores={cl.Mana=4..},x_rotation=87..90] run scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=4..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Vitality!","bold":true,"color":"green"}]

#Mana Depletion
execute if entity @s[scores={cl.Mana=4..},x_rotation=87..90] run scoreboard players remove @s cl.Mana 4
