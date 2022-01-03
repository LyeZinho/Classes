#Not Enough Mana
execute if entity @s[scores={cl.Mana=..3}] run function classes:main/mana_system/nomana

#Damage nearby
execute if entity @s[scores={cl.Mana=4..}] run tag @s add GetAngry
execute if entity @s[scores={cl.Mana=4..}] at @s run tag @e[type=!#classes:bosses,type=!#classes:nontarget,distance=..5,tag=!summoned,nbt=!{NoAI:1b}] add DeepFreeze
execute if entity @s[scores={cl.Mana=4..}] at @s as @e[tag=DeepFreeze,distance=..5] run scoreboard players set @s cl.HitBySpell 100
execute if entity @s[scores={cl.Mana=4..}] at @s as @e[tag=DeepFreeze,distance=..5] run function classes:main/loot_table/main
execute if entity @s[scores={cl.Mana=4..}] at @s as @e[tag=DeepFreeze,distance=..5] run scoreboard players set @s cl.e.DeepFreeze 300
execute if entity @s[scores={cl.Mana=4..}] at @s as @e[tag=DeepFreeze,distance=..5] run data merge entity @s {NoAI:1b,Silent:1b,Invulnerable:1b}
execute if entity @s[scores={cl.Mana=4..}] as @e[tag=DeepFreeze,distance=..5] at @s run fill ~ ~ ~ ~ ~1 ~ packed_ice keep
execute if entity @s[scores={cl.Mana=4..}] at @e[tag=DeepFreeze,distance=..5] run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.5 0.5 0.5 1 100 normal
execute if entity @s[scores={cl.Mana=4..}] if entity @e[tag=DeepFreeze,distance=..5] run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 5 0.75 5 0.01 500 normal

#Get mobs angry if not already
execute if entity @s[scores={cl.Mana=4..}] at @s as @e[type=!#classes:nontarget,distance=..3,nbt={AngerTime:0},tag=!summoned] run data modify entity @s AngryAt set from entity @p[tag=GetAngry] UUID
execute if entity @s[scores={cl.Mana=4..}] at @s as @e[type=#classes:neutral,nbt=!{Brain:{memories:{"minecraft:angry_at":{}}}},tag=!summoned] run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[tag=GetAngry] UUID
tag @s remove GetAngry

#Sound effect
execute if entity @s[scores={cl.Mana=4..}] at @e[tag=DeepFreeze,distance=..5] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.8 2
execute if entity @s[scores={cl.Mana=4..}] at @e[tag=DeepFreeze,distance=..5] run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 5 1.5
execute if entity @s[scores={cl.Mana=4..}] at @s unless entity @e[tag=DeepFreeze,distance=..5] run playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.5 2

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=4..}] if entity @e[tag=DeepFreeze,distance=..5] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=4..}] if entity @e[tag=DeepFreeze,distance=..5] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Deep Freeze!","bold":true,"color":"#0096FF"}]
execute if entity @s[scores={cl.Mana=4..}] unless entity @e[tag=DeepFreeze,distance=..5] run function classes:main/mana_system/noneinrange

#Cooldown
execute if entity @s[scores={cl.Mana=4..}] if entity @e[tag=DeepFreeze,distance=..5] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=4..}] if entity @e[tag=DeepFreeze,distance=..5] run scoreboard players remove @s cl.Mana 4

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/deepfreeze
