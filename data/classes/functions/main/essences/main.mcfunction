#Set scores of marker
execute unless entity @s[scores={cl.EssenceSound=1..}] run scoreboard players set @s cl.EssenceSound 100

#Reduce score of marker
execute as @s[scores={cl.EssenceSound=1..}] run scoreboard players remove @s cl.EssenceSound 1

#Soul Particles
execute at @s run particle minecraft:soul ~ ~ ~ 0 0.05 0 0.01 2 force

##Element specific Particles/Sounds
#Fire
execute as @s[tag=cl.ess.Fire] at @s run particle minecraft:small_flame ~ ~ ~ 0 0.1 0 0.015 5 force
execute as @s[tag=cl.ess.Fire] at @s run playsound minecraft:block.furnace.fire_crackle ambient @a ~ ~ ~ 0.4 1

#Water (sound not needed - particle effect comes with it)
execute as @s[tag=cl.ess.Water] at @s run particle minecraft:dripping_dripstone_water ~ ~ ~ 0.2 0.1 0.2 0.01 1 force

#Earth (no sound currently - working on finding good one)
execute as @s[tag=cl.ess.Earth] at @s run particle minecraft:falling_spore_blossom ~ ~ ~ 0.2 0.3 0.2 0.01 1 force
execute as @s[tag=cl.ess.Earth,scores={cl.EssenceSound=99}] at @s run playsound minecraft:block.respawn_anchor.set_spawn ambient @a ~ ~ ~ 0.3 0.1
#Air
execute as @s[tag=cl.ess.Air] at @s run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.2 0.3 0.2 0.01 1 force
execute as @s[tag=cl.ess.Air] at @s run playsound minecraft:entity.horse.breathe ambient @a ~ ~ ~ 0.3 0.5

#Magic
execute as @s[tag=cl.ess.Magic] at @s run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
execute as @s[tag=cl.ess.Magic,scores={cl.EssenceSound=99}] at @s run playsound minecraft:block.portal.ambient ambient @a ~ ~ ~ 0.5 0.5

#Buff
execute as @s[tag=cl.ess.Buff] at @s run particle minecraft:wax_on ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
execute as @s[tag=cl.ess.Buff,scores={cl.EssenceSound=99}] at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.5

#Healing
execute as @s[tag=cl.ess.Healing] at @s run particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
execute as @s[tag=cl.ess.Healing,scores={cl.EssenceSound=99}] at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.5

#Smiting
execute as @s[tag=cl.ess.Smiting] at @s run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
execute as @s[tag=cl.ess.Smiting,scores={cl.EssenceSound=99}] at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.5

#Detect player
execute at @s positioned ~ ~-1 ~ if entity @p[distance=..1] run function classes:main/essences/learn
