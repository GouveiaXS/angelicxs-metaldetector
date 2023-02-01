ESX = nil
QBcore = nil

if Config.UseESX then
    ESX = exports["es_extended"]:getSharedObject()
elseif Config.UseQBCore then
    QBCore = exports['qb-core']:GetCoreObject()
end
-- Global Syncs

RegisterServerEvent('angelicxs-MDetector:Server:SoundPlayer')
AddEventHandler('angelicxs-MDetector:Server:SoundPlayer', function(args)
	TriggerClientEvent('angelicxs-MDetector:SoundPlayer',-1,args)
end)
