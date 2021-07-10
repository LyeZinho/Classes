#Not Enough Mana
execute if entity @s[scores={cl.Mana=..7}] run function classes:mage/mana/nomana

#Summon AEC
execute if entity @s[scores={cl.Mana=8..}] at @s as @e[tag=summoned] if score @s cl.summonCount = @p cl.summonCount run scoreboard players set @e[tag=summoned,sort=nearest,limit=1] cl.summonCount 1
execute as @s[scores={cl.Mana=8..}] at @s positioned ^ ^ ^3 run summon iron_golem ~ ~1 ~ {DeathLootTable:"none",PlayerCreated:1b,Tags:["summoned"]}
execute as @s[scores={cl.Mana=8..}] run scoreboard players set @e[type=iron_golem,tag=summoned,limit=1,sort=nearest] cl.summonCount 600
execute as @s[scores={cl.Mana=8..}] run scoreboard players set @s cl.summonCount 600
execute as @s[scores={cl.Mana=8..}] as @e[type=iron_golem,tag=summoned] at @s run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 1 1 1 2 30 normal

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=8..}] at @s run function classes:mage/spells/all/cast
execute at @s[scores={cl.Mana=8..}] run playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 0.1 2
execute at @s[scores={cl.Mana=8..}] run playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 0.8 2

#Particles
execute as @s[scores={cl.Mana=8..}] at @s run particle minecraft:enchant ~ ~ ~ 1 1 1 1 40 normal
execute if entity @s[scores={cl.Mana=8..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
execute if entity @s[scores={cl.Mana=8..}] at @e[type=iron_golem,tag=summoned,scores={cl.summonCount=600}] run particle minecraft:witch ~ ~ ~ 0.1 1 0.1 0.1 100 force
execute if entity @s[scores={cl.Mana=8..}] at @e[type=iron_golem,tag=summoned,scores={cl.summonCount=600}] run particle minecraft:enchant ~ ~ ~ 0.6 0.4 0.6 5 100 force

#Spell Cast Notification
execute as @s[scores={cl.Mana=8..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Summon Iron Golem!","bold":true,"color":"#AAAAAA"}]

#Cooldown
execute as @s[scores={cl.Mana=8..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute as @s[scores={cl.Mana=8..}] run scoreboard players remove @s cl.Mana 8
