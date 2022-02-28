###################################################################
#                         DATAPACK INFO                           #
#                                                                 #
#     Author: Robified                                            #
#     Support:                                                    #
#     Special thanks to: CloudWolf for his slowcast datapack      #
#     which is used for specific spells!                          #
###################################################################

#Handle Raycasts
execute if entity @e[type=marker,tag=cl.r.slowcast] as @e[type=marker,tag=cl.r.slowcast] at @s run function classes:operations/raycast/main

#Function for all new players, to ensure scoreboards are set up
execute if entity @a[tag=!cl.o.Joined] as @a[tag=!cl.o.Joined] run function classes:main/new_player/main
execute if entity @a[scores={cl.Class=1..},tag=!cl.o.ClassSelected] as @a[scores={cl.Class=1..},tag=!cl.o.ClassSelected] run function classes:main/new_player/classselected

#Mana Regen
execute as @a[scores={cl.Class=3..4}] run function classes:main/mana_system/main

#Display Mana bar to players who have Mana score set (spellcasters only)
execute as @a[gamemode=!creative,gamemode=!spectator,scores={cl.Mana=-5..}] run function classes:main/mana_system/mana

#XP Handling for spells/Essence Summon Handling
execute if entity @e[type=item,nbt={Item:{tag:{cl.Custom:1b}}},tag=!cl.t.processed] as @e[type=item,nbt={Item:{tag:{cl.Custom:1b}}}] run function classes:main/loot_table/acacia_button/main
execute if entity @a[scores={cl.t.dropItem=1..}] as @e[type=item,nbt={Item:{tag:{cl.s.Spell:1b}}}] run function classes:operations/items/preventspelldrops

#Kill fireballs that have been deflected
execute if entity @e[type=#classes:fireballs,tag=cl.t.newFireball] as @e[type=#classes:fireballs,tag=cl.t.newFireball] at @s run function classes:operations/motion/killfireball

#Essences
execute as @e[type=area_effect_cloud,tag=cl.EssenceMarker] run function classes:main/essences/main
