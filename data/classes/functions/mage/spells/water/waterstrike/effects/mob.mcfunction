#Do these things when spell hits
playsound minecraft:entity.fish.swim player @a ~ ~ ~ 0.4 0.7
execute if entity @s[type=#classes:undead,type=!#classes:fireproof] run effect give @s instant_health 2 0 true
execute if entity @s[type=!#classes:fireproof,type=!#classes:undead,type=!enderman] run effect give @s instant_damage 2 0 true
data merge entity @s {Fire:1}
execute if entity @s[type=enderman] run effect give @s instant_damage 1 1 true
execute if entity @s[type=#classes:fireproof,type=!#classes:undead] run effect give @s instant_damage 1 1 true
execute if entity @s[type=#classes:fireproof,type=#classes:undead] run effect give @s instant_health 1 1 true
particle minecraft:falling_water ~ ~ ~ 1 1 1 10 30 normal
execute if entity @s[predicate=classes:entities/angry] run function classes:entities/vanilla/angry

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[type=marker,tag=cl.r.waterstrike,sort=nearest,limit=1] run function classes:mage/spells/water/waterstrike/zprivate/end
