ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('angelicxs-MDetector:Server:SoundPlayer')
AddEventHandler('angelicxs-MDetector:Server:SoundPlayer', function(args)
	TriggerClientEvent('angelicxs-MDetector:SoundPlayer',-1,args)
end)
