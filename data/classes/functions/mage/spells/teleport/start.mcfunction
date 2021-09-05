#Not Enough Mana
execute if entity @s[scores={cl.Mana=..1}] run function classes:main/mana_system/nomana

#Only change function line for each different spell
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players add system cl.slo_id 1
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players operation @s cl.slo_id = system cl.slo_id
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players operation @s cl.s.Teleport.t = system cl.slo_id
execute if entity @s[scores={cl.Mana=2..}] run summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast", "teleport"]}
execute if entity @s[scores={cl.Mana=2..}] as @e[type=marker,tag=slowcast,tag=new,tag=teleport,limit=1] run function classes:mage/spells/teleport/zprivate/setup
execute if entity @s[scores={cl.Mana=2..}] run tag @s remove this

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=2..}] at @s run function classes:mage/spells/all/cast
execute if entity @s[scores={cl.Mana=2..}] at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1

#Particles
execute if entity @s[scores={cl.Mana=2..}] at @s run particle minecraft:witch ~ ~ ~ 0.3 1 0.3 1.2 40 force
execute if entity @s[scores={cl.Mana=2..}] at @s run particle minecraft:reverse_portal ~ ~ ~ 0.8 1 0.8 0.03 50 force

#Cooldown
execute as @s[scores={cl.Mana=2..}] run scoreboard players set @s cl.Cooldown 20

#Give player tag for teleport
execute if entity @s[scores={cl.Mana=2..}] run tag @s add Teleport

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=2..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Teleport!","bold":true,"color":"light_purple"}]

#Mana Depletion
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players remove @s cl.Mana 2
