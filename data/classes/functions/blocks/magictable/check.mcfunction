execute unless block ~ ~ ~ dropper{Items:[{Slot:1b}]} run item replace block ~ ~ ~ container.1 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:2,cl.item.noDrop:2b,cl.gui:merge}
execute unless block ~ ~ ~ dropper{Items:[{Slot:3b}]} run item replace block ~ ~ ~ container.3 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:1,cl.item.noDrop:2b,cl.gui:blank}
execute unless block ~ ~ ~ dropper{Items:[{Slot:4b}]} run item replace block ~ ~ ~ container.4 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:3,cl.item.noDrop:2b,cl.gui:downarrow}
execute unless block ~ ~ ~ dropper{Items:[{Slot:5b}]} run item replace block ~ ~ ~ container.5 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:1,cl.item.noDrop:2b,cl.gui:blank}
execute unless block ~ ~ ~ dropper{Items:[{Slot:6b}]} run item replace block ~ ~ ~ container.6 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:1,cl.item.noDrop:2b,cl.gui:blank}
execute unless block ~ ~ ~ dropper{Items:[{Slot:8b}]} run item replace block ~ ~ ~ container.8 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:1,cl.item.noDrop:2b,cl.gui:blank}

execute if block ~ ~ ~ dropper{Items:[{Slot:1b,Count:1b,tag:{cl.item.noDrop:2b}}]} unless block ~ ~ ~ dropper{Items:[{Slot:1b,Count:1b,tag:{cl.gui:merge}}]} run item replace block ~ ~ ~ container.1 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:2,cl.item.noDrop:2b,cl.gui:merge}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,Count:1b,tag:{cl.item.noDrop:2b}}]} unless block ~ ~ ~ dropper{Items:[{Slot:3b,Count:1b,tag:{cl.gui:blank}}]} run item replace block ~ ~ ~ container.3 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:1,cl.item.noDrop:2b,cl.gui:blank}
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,Count:1b,tag:{cl.item.noDrop:2b}}]} unless block ~ ~ ~ dropper{Items:[{Slot:4b,Count:1b,tag:{cl.gui:downarrow}}]} run item replace block ~ ~ ~ container.4 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:3,cl.item.noDrop:2b,cl.gui:downarrow}
execute if block ~ ~ ~ dropper{Items:[{Slot:5b,Count:1b,tag:{cl.item.noDrop:2b}}]} unless block ~ ~ ~ dropper{Items:[{Slot:5b,Count:1b,tag:{cl.gui:blank}}]} run item replace block ~ ~ ~ container.5 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:1,cl.item.noDrop:2b,cl.gui:blank}
execute if block ~ ~ ~ dropper{Items:[{Slot:6b,Count:1b,tag:{cl.item.noDrop:2b}}]} unless block ~ ~ ~ dropper{Items:[{Slot:6b,Count:1b,tag:{cl.gui:blank}}]} run item replace block ~ ~ ~ container.6 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:1,cl.item.noDrop:2b,cl.gui:blank}
execute if block ~ ~ ~ dropper{Items:[{Slot:8b,Count:1b,tag:{cl.item.noDrop:2b}}]} unless block ~ ~ ~ dropper{Items:[{Slot:8b,Count:1b,tag:{cl.gui:blank}}]} run item replace block ~ ~ ~ container.8 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:1,cl.item.noDrop:2b,cl.gui:blank}
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{cl.item.noDrop:2b}}]} run item replace block ~ ~ ~ container.0 with minecraft:air
execute if block ~ ~ ~ dropper{Items:[{Slot:2b,tag:{cl.item.noDrop:2b}}]} run item replace block ~ ~ ~ container.2 with minecraft:air
execute if block ~ ~ ~ dropper{Items:[{Slot:7b,tag:{cl.item.noDrop:2b}}]} run item replace block ~ ~ ~ container.7 with minecraft:air
