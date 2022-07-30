#Particle Effect
particle end_rod ^-0.4 ^0.2 ^0.3 0 0 0 0.05 1 force

#Play sound effect - use here when needing repeat
execute at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.5

#Do these things when spell hits
execute positioned ~-1 ~-1 ~-1 as @e[tag=!cl.r.this,type=!#classes:nontarget,type=!#classes:undead,tag=!cl.t.summoned,tag=!cl.t.Owned,dx=1,dy=1,dz=1] at @s run function classes:healer/spells/smiting/bolt/effects/mob
execute positioned ~-1 ~-1 ~-1 as @e[tag=!cl.r.this,type=#classes:undead,tag=!cl.t.summoned,tag=!cl.t.Owned,dx=1,dy=1,dz=1] at @s run function classes:healer/spells/smiting/bolt/effects/undead

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:healer/spells/smiting/bolt/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:healer/spells/smiting/bolt/zprivate/end
