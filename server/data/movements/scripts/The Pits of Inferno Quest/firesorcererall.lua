local zabierz = 300
local kolor = TEXTCOLOR_RED

function onStepIn(cid, item, frompos, item2, topos) 

local zycie = getCreatureHealth(cid)
local topos = getPlayerPosition(cid)

if item.actionid == 9884 and isSorcerer(cid) == false then
doCreatureAddHealth(cid, -zycie)
doSendAnimatedText(topos, zycie, kolor)
doPlayerSay(cid, "You have choosen the wrong path!", 16)
doSendMagicEffect(getPlayerPosition(cid), 15)

elseif item.actionid == 9884 and isSorcerer(cid) == true then
doCreatureAddHealth(cid, -zabierz)
doSendAnimatedText(topos, zabierz, kolor)
doSendMagicEffect(getPlayerPosition(cid), 15)
end

return true
end