#Water Strike (only fire extinguish on)
execute if score #cl.pref cl.p.wExtFire matches 1 if score #cl.pref cl.p.wPortal matches 0 if score #cl.pref cl.p.wObsidian matches 0 run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Water Strike","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Shoots a jet of water that damages any hostile mob in its path.","color":"aqua"}','{"text":" "}','[{"text":""},{"text":"Other Effects:"}]','{"text":"- Extinguish fires, candles, and campfires.","color":"aqua"}']},CustomModelData:60300,cl.s.Spell:1b,cl.s.Water:1b,cl.s.WaterStrike:1b},Count:1b}]}

#Water Strike (only breaking portals is on)
execute if score #cl.pref cl.p.wExtFire matches 0 if score #cl.pref cl.p.wPortal matches 1 if score #cl.pref cl.p.wObsidian matches 0 run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Water Strike","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Shoots a jet of water that damages any hostile mob in its path.","color":"aqua"}','{"text":" "}','[{"text":""},{"text":"Other Effects:"}]','{"text":"- Can break lit Nether portals.","color":"aqua"}']},CustomModelData:60300,cl.s.Spell:1b,cl.s.Water:1b,cl.s.WaterStrike:1b},Count:1b}]}

#Water Strike (only lava convert is on)
execute if score #cl.pref cl.p.wExtFire matches 0 if score #cl.pref cl.p.wPortal matches 0 if score #cl.pref cl.p.wObsidian matches 1 run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Water Strike","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Shoots a jet of water that damages any hostile mob in its path.","color":"aqua"}','{"text":" "}','[{"text":""},{"text":"Other Effects:"}]','{"text":"- Turns lava into cobblestone/obsidian.","color":"aqua"}']},CustomModelData:60300,cl.s.Spell:1b,cl.s.Water:1b,cl.s.WaterStrike:1b},Count:1b}]}

#Water Strike (fire extinguish and lava convert)
execute if score #cl.pref cl.p.wExtFire matches 1 if score #cl.pref cl.p.wPortal matches 0 if score #cl.pref cl.p.wObsidian matches 1 run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Water Strike","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Shoots a jet of water that damages any hostile mob in its path.","color":"aqua"}','{"text":" "}','[{"text":""},{"text":"Other Effects:"}]','{"text":"- Extinguish fires, candles, and campfires.","color":"aqua"}','{"text":"- Turns lava into cobblestone/obsidian.","color":"aqua"}']},CustomModelData:60300,cl.s.Spell:1b,cl.s.Water:1b,cl.s.WaterStrike:1b},Count:1b}]}

#Water Strike (fire extinguish and breaking portals)
execute if score #cl.pref cl.p.wExtFire matches 1 if score #cl.pref cl.p.wPortal matches 1 if score #cl.pref cl.p.wObsidian matches 0 run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Water Strike","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Shoots a jet of water that damages any hostile mob in its path.","color":"aqua"}','{"text":" "}','[{"text":""},{"text":"Other Effects:"}]','{"text":"- Extinguish fires, candles, and campfires.","color":"aqua"}','{"text":"- Can break lit Nether portals.","color":"aqua"}']},CustomModelData:60300,cl.s.Spell:1b,cl.s.Water:1b,cl.s.WaterStrike:1b},Count:1b}]}

#Water Strike (breaking portals and lava convert)
execute if score #cl.pref cl.p.wExtFire matches 0 if score #cl.pref cl.p.wPortal matches 1 if score #cl.pref cl.p.wObsidian matches 1 run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Water Strike","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Shoots a jet of water that damages any hostile mob in its path.","color":"aqua"}','{"text":" "}','[{"text":""},{"text":"Other Effects:"}]','{"text":"- Turns lava into cobblestone/obsidian.","color":"aqua"}','{"text":"- Can break lit Nether portals.","color":"aqua"}']},CustomModelData:60300,cl.s.Spell:1b,cl.s.Water:1b,cl.s.WaterStrike:1b},Count:1b}]}

#Water Strike (fire extinguish, breaking portals, lava convert on)
execute if score #cl.pref cl.p.wExtFire matches 1 if score #cl.pref cl.p.wPortal matches 1 if score #cl.pref cl.p.wObsidian matches 1 run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Water Strike","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Shoots a jet of water that damages any hostile mob in its path.","color":"aqua"}','{"text":" "}','[{"text":""},{"text":"Other Effects:"}]','{"text":"- Extinguish fires, candles, and campfires.","color":"aqua"}','{"text":"- Turns lava into cobblestone/obsidian.","color":"aqua"}','{"text":"- Can break lit Nether portals.","color":"aqua"}']},CustomModelData:60300,cl.s.Spell:1b,cl.s.Water:1b,cl.s.WaterStrike:1b},Count:1b}]}

#Water Strike (all pref off)
execute if score #cl.pref cl.p.wExtFire matches 0 if score #cl.pref cl.p.wPortal matches 0 if score #cl.pref cl.p.wObsidian matches 0 run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Water Strike","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Shoots a jet of water that damages any hostile mob in its path.","color":"aqua"}']},CustomModelData:60300,cl.s.Spell:1b,cl.s.Water:1b,cl.s.WaterStrike:1b},Count:1b}]}

#Particle effect
particle minecraft:dripping_water ~ ~ ~ 0.3 1 0.3 0.02 50 force @a

#Playsound
playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 1 1
