#Mana Regen (subject to change) ManaRegenSec is 20 * # of seconds for point of Mana to regen every # of seconds (60 = 1 point of Mana every 3 seconds)
scoreboard players add @s[scores={cl.ManaRegenSec=..19,cl.Mana=..9}] cl.ManaRegenSec 1
scoreboard players add @s[scores={cl.ManaRegenSec=20,cl.Mana=..9}] cl.Mana 1
scoreboard players set @s[scores={cl.ManaRegenSec=20}] cl.ManaRegenSec 1
