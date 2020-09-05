local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
BMclient = Tunnel.getInterface("vRP_basic_menu","vRP_basic_menu")
vRPclient = Tunnel.getInterface("vRP", "OXY_PADURAR")

RegisterServerEvent('forestcar')
AddEventHandler('forestcar', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id, "Padurar"}) then
    BMclient.spawnVehicle(player,{'Mesa3'})
    vRPclient.notify(player, {GetPlayerName(source).. " ~h~~y~poti spawna cate o masina o data la 6 minute."})
    end
end)

RegisterServerEvent('dacubanu')
AddEventHandler('dacubanu', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.tryGetInventoryItem({user_id,"Rumegus",1,true}) then
    vRP.giveMoney({user_id, math.random(100,5000)})
    end
end)


RegisterServerEvent('vinerumegusul')
AddEventHandler('vinerumegusul', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    vRPclient.notify(player, {GetPlayerName(source).. " ~h~~y~Dute jos pentru a colecta cutia cu rumegus!~y~"})
end)


RegisterServerEvent('dullagps')
AddEventHandler('dullagps', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    vRPclient.notify(player, {GetPlayerName(source).. " ~h~~y~Du ~g~cutia cu rumegus ~y~la masina si transportal la punctul de pe ~g~GPS!~y~"})
end)



RegisterServerEvent('notifcaredrumegus')
AddEventHandler('notifcaredrumegus', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    vRPclient.notify(player, {GetPlayerName(source).. " ~h~~y~Apasa E pentru a primi cutia cu rumegus!~y~"})
end)

RegisterServerEvent('darumegus')
AddEventHandler('darumegus', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    vRP.giveInventoryItem({user_id,"Rumegus",1,true})
    vRPclient.notify(player, {GetPlayerName(source).. " ~h~~y~Pune cutia in masina si livreaza cutia!~y~"})
end)


RegisterServerEvent('tofabrica')
AddEventHandler('tofabrica', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    vRPclient.notify(player, {GetPlayerName(source).. " ~h~~y~Ai masina FULL du ~g~lemnul ~y~din masina la fabrica de cherestea pentru a fi procesat!~y~"})
end)



RegisterServerEvent('langamasinanotify')
AddEventHandler('langamasinanotify', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    vRPclient.notify(player, {GetPlayerName(source).. " ~h~~g~~g~Apasa E pentru a pune lemnele in masina !~g~"})
end)

RegisterServerEvent('puslemnmasina')
AddEventHandler('puslemnmasina', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    vRPclient.notify(player, {GetPlayerName(source).. " ~h~~g~du ~g~Ai pus lemnele in masina!~g~"})
end)



RegisterServerEvent('darumegusu')
AddEventHandler('darumegusu', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    vRP.giveInventoryItem({user_id,"Rumegus",1,true})
end)
RegisterServerEvent('iacutia')
AddEventHandler('iacutia', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    vRPclient.notify(player, {GetPlayerName(source).. " ~h~~c~Dute si livreaza rumegusul!"})
end)





