#Particle Effect
particle minecraft:falling_water ^-0.5 ^ ^0.3 0.1 0.1 0.1 1 2 force

#Do these things when spell hits
execute as @e[dx=0,tag=!this,type=!#classes:nontarget] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data merge entity @s {Fire:1}
execute as @e[dx=0,tag=!this,type=!#classes:undead,type=!#classes:fireproof,type=!#classes:nontarget,type=!#classes:waterproof,tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:instant_damage 1 0 true
execute as @e[dx=0,tag=!this,type=#classes:undead,type=!#classes:fireproof,type=!#classes:nontarget,type=!#classes:waterproof,tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:instant_health 1 0 true
execute as @e[dx=0,tag=!this,type=#classes:fireproof,type=!#classes:undead,type=!#classes:nontarget,type=!#classes:waterproof,tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:instant_damage 1 1 true
execute as @e[dx=0,tag=!this,type=#classes:fireproof,type=#classes:undead,type=!#classes:nontarget,tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:instant_health 1 1 true
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 at @s run particle minecraft:falling_water ~ ~ ~ 1 1 1 10 30 normal
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,nbt={AngerTime:0},tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data modify entity @s AngryAt set from entity @p[scores={cl.Class=3}] UUID
execute as @e[dx=0,tag=!this,type=#classes:neutral,nbt=!{Brain:{memories:{"minecraft:angry_at":{}}}},tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[scores={cl.Class=3}] UUID

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run kill @e[type=marker,tag=waterstrike,sort=nearest,limit=1]

#Play sound
execute at @s run playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 0.8 1

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/waterstrike/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:nether_portal run setblock ~ ~ ~ minecraft:air
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:fire run playsound minecraft:block.fire.extinguish ambient @a[distance=..10] ~ ~ ~ 0.4 1
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:fire run setblock ~ ~ ~ minecraft:air
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=true,facing=north] run setblock ~ ~ ~ minecraft:campfire[lit=false,facing=north]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=true,facing=south] run setblock ~ ~ ~ minecraft:campfire[lit=false,facing=south]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=true,facing=east] run setblock ~ ~ ~ minecraft:campfire[lit=false,facing=east]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=true,facing=west] run setblock ~ ~ ~ minecraft:campfire[lit=false,facing=west]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=true,facing=north] run setblock ~ ~ ~ minecraft:soul_campfire[lit=false,facing=north]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=true,facing=south] run setblock ~ ~ ~ minecraft:soul_campfire[lit=false,facing=south]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=true,facing=east] run setblock ~ ~ ~ minecraft:soul_campfire[lit=false,facing=east]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=true,facing=west] run setblock ~ ~ ~ minecraft:soul_campfire[lit=false,facing=west]
execute in minecraft:overworld if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava[level=0] run setblock ~ ~ ~ minecraft:obsidian
execute in minecraft:overworld if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava unless block ~ ~ ~ minecraft:lava[level=0] run setblock ~ ~ ~ minecraft:cobblestone
execute in minecraft:the_nether if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava run setblock ~ ~ ~ minecraft:cobblestone
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava run particle minecraft:large_smoke ^-0.5 ^ ^0.5 0.1 0.1 0.1 0.05 20 normal
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava run playsound minecraft:block.lava.extinguish ambient @a[distance=..10] ~ ~ ~ 1 1
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava run function classes:mage/spells/waterstrike/zprivate/end
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/waterstrike/zprivate/end
