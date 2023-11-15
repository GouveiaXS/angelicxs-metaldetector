Config = {}

Config.UseESX = true						-- Use ESX Framework
Config.UseQBCore = false					-- Use QBCore Framework (Ignored if Config.UseESX = true)
Config.PoliceAlertCooldown = 30             -- How long, in seconds for the police alert cooldown

RegisterNetEvent('angelicxs-MDetector:CustomDisptach')
AddEventHandler('angelicxs-MDetector:CustomDisptach', function(coordz)
	-- CD_DISPATCH EXAMPLE BELOW
--[[ 	local data = exports['cd_dispatch']:GetPlayerInfo()
    TriggerServerEvent('cd_dispatch:AddNotification', {
        job_table = {'police', 'bcso'}, 
        coords = coordz,
        title = '10-22 - Metal Detector Alarm',
        message = 'A metal detector has triggered near '..data.street, 
        flash = 0,
        unique_id = tostring(math.random(0000000,9999999)),
        blip = {
            sprite = 225, 
            scale = 1.2, 
            colour = 5,
            flashes = false, 
            text = '10-22 - Metal Detector Alarm',
            time = (5*60*1000),
            sound = 1,
        }
    }) ]]
end)


--[[
	USAGE
	To add an detector, copy the table below and configure as needed:
		coords = coords of center of detector
		detectRadius = how far the detector can sense items
		soundRadious = how far the detectors sound is able to reach
		timer = how long the alarm goes off (used as a loop, alarm will continue to go off as long as they are in the radius and activating it)
		sound = what sound the alarm makes
		jobsExempt = OPTIONAL: Table of job keys that are will not set off the alarm
		UseMainList = OPTIONAL: If true, will use the Config.MetalItems table as items that will set off alarm (only requires one of the items listed)
		items = OPTIONAL: Table of specific items that will set off alarm (only requires one of the items listed)
		entity = OPTIONAL: If true, will spawn a metal detector at the location
		heading = OPTIONAL: When entity = true, will adjust the detector to face the desired heading.
        policeAlert = OPTIONAL: When true will send a police alert if triggered

		*** Must use UseMainList and/or items in order for the detector to actually detect inventory items. If both are nil, alarm will not go off.**
		*** sounds other than those listed below are not guaranteed to play, change at own risk ***
			sounds that work are based on siren list and include:
				'SIRENS_AIRHORN', 'VEHICLES_HORNS_SIREN_1', 'VEHICLES_HORNS_SIREN_2',  'VEHICLES_HORNS_POLICE_WARNING', 'RESIDENT_VEHICLES_SIREN_WAIL_01', 'RESIDENT_VEHICLES_SIREN_WAIL_02', 
				'RESIDENT_VEHICLES_SIREN_WAIL_03', 'RESIDENT_VEHICLES_SIREN_QUICK_01', 'RESIDENT_VEHICLES_SIREN_QUICK_02', 'RESIDENT_VEHICLES_SIREN_QUICK_03',
				'VEHICLES_HORNS_AMBULANCE_WARNING', 'VEHICLES_HORNS_FIRETRUCK_WARNING',  'RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01', 'RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01'
}
]]

--[[
	
	ExampleLoction = {
		{	-- example detector 1
			coords = {xxxx, yyyy, zzzz}, detectRadius = 0.8, soundRadious = 10, timer = 2000, sound = 'VEHICLES_HORNS_AMBULANCE_WARNING',
			jobsExempt = {
				["police"] = 0,
				["ambulance"] = 0,
			},
			UseMainList = true,
			items = {
				"water",
			},
	
		},
		{	-- example detector 2
			coords = {xxxx, yyyy, zzzz}, detectRadius = 0.8, soundRadious = 10, timer = 2000, sound = 'VEHICLES_HORNS_AMBULANCE_WARNING',
			items = {
				"water",
			},
	
		},
		{	-- example detector 3
			coords = {xxxx, yyyy, zzzz}, detectRadius = 0.8, soundRadious = 10, timer = 2000, sound = 'VEHICLES_HORNS_AMBULANCE_WARNING',
			UseMainList = true,
			items = {
				"water",
			},
	
		},
		{	-- example detector 4
			coords = {xxxx, yyyy, zzzz}, detectRadius = 0.8, soundRadious = 10, timer = 2000, sound = 'VEHICLES_HORNS_AMBULANCE_WARNING',
			UseMainList = true,
			entity = true, heading = 0
		},
	},
]]

Config.Detectors = {

	MRPD = {
		{	
			coords = {466.38, -994.68, 30.46}, detectRadius = 0.8, soundRadious = 10, timer = 2000, sound = 'VEHICLES_HORNS_AMBULANCE_WARNING',
			jobsExempt = {
				["police"] = 0,
				["ambulance"] = 0,
			},
			UseMainList = true,
		},
		{
			coords = {466.71, -992.46, 30.46}, detectRadius = 1.8, soundRadious = 10, timer = 2000, sound = 'VEHICLES_HORNS_AMBULANCE_WARNING',
			jobsExempt = {
				["police"] = 0,
				["ambulance"] = 0,
			},
			UseMainList = true,
		},
		{
			coords = {478.62, -986.51, 29.96}, detectRadius = 1.8, soundRadious = 10, timer = 2000, sound = 'VEHICLES_HORNS_AMBULANCE_WARNING',
			jobsExempt = {
				["police"] = 0,
				["ambulance"] = 0,
			},
			UseMainList = true,
		},
		{
			coords = {479.88, -986.61, 29.96}, detectRadius = 1.8, soundRadious = 10, timer = 2000, sound = 'VEHICLES_HORNS_AMBULANCE_WARNING',
			jobsExempt = {
				["police"] = 0,
				["ambulance"] = 0,
			},
			UseMainList = true,
		},
		{
			coords = {475.94, -991.36, 25.47}, detectRadius = 1.8, soundRadious = 10, timer = 2000, sound = 'VEHICLES_HORNS_AMBULANCE_WARNING',
			jobsExempt = {
				["police"] = 0,
				["ambulance"] = 0,
			},
			UseMainList = true,
		},
	},
 	UpperPillbox = {
		{	-- main doors
			coords = {299.7238, -584.8970, 43.2841}, detectRadius = 0.8, soundRadious = 10, timer = 2000, sound = 'VEHICLES_HORNS_AMBULANCE_WARNING',
			items = {
				"water",
			},
	
		},
	},

}

Config.MetalItems = {
	'weapon_dagger',
	'weapon_crowbar',
	'weapon_flashlight',
	'weapon_golfclub',
	'weapon_hammer',
	'weapon_hatchet',
	'weapon_knuckle',
	'weapon_knife',
	'weapon_machete',
	'weapon_switchblade',
	'weapon_wrench',
	'weapon_battleaxe',
	'weapon_handcuffs',
	'weapon_pistol',
	'weapon_pistol_mk2',
	'weapon_combatpistol',
	'weapon_appistol',
	'weapon_stungun',
	'weapon_pistol50',
	'weapon_snspistol',
	'weapon_heavypistol',
	'weapon_vintagepistol',
	'weapon_flaregun',
	'weapon_marksmanpistol',
	'weapon_revolver',
	'weapon_revolver_mk2',
	'weapon_doubleaction',
	'weapon_snspistol_mk2',
	'weapon_raypistol',
	'weapon_navyrevolver',
	'weapon_gadgetpistol',
	'weapon_microsmg',
	'weapon_smg',
	'weapon_smg_mk2',
	'weapon_assaultsmg',
	'weapon_combatpdw',
	'weapon_machinepistol',
	'weapon_minismg',
	'weapon_raycarbine',
	'weapon_pumpshotgun',
	'weapon_sawnoffshotgun',
	'weapon_assaultshotgun',
	'weapon_bullpupshotgun',
	'weapon_musket',
	'weapon_heavyshotgun',
	'weapon_dbshotgun',
	'weapon_autoshotgun',
	'weapon_combatshotgun',
	'weapon_pumpshotgun_mk2',
	'weapon_assaultrifle',
	'weapon_assaultrifle_mk2',
	'weapon_carbinerifle',
	'weapon_carbinerifle_mk2',
	'weapon_advancedrifle',
	'weapon_specialcarbine',
	'weapon_bullpuprifle',
	'weapon_compactrifle',
	'weapon_specialcarbine_mk2',
	'weapon_bullpuprifle_mk2',
	'weapon_militaryrifle',
	'weapon_mg',
	'weapon_combatmg',
	'weapon_gusenberg',
	'weapon_combatmg_mk2',
	'weapon_sniperrifle',
	'weapon_heavysniper',
	'weapon_marksmanrifle',
	'weapon_remotesniper',
	'weapon_heavysniper_mk2',
	'weapon_marksmanrifle_mk2',
	'weapon_rpg',
	'weapon_grenadelauncher_smoke',
	'weapon_grenadelauncher',
	'weapon_minigun',
	'weapon_firework',
	'weapon_railgun',
	'weapon_hominglauncher',
	'weapon_compactlauncher',
	'weapon_rayminigun',
	'weapon_grenade',
	'weapon_bzgas',
	'weapon_proxmine',
	'weapon_pipebomb',
	'weapon_smokegrenade',
	'weapon_flare',
	'weapon_fireextinguisher',
	'pistol_flashlight',
	'pistol_suppressor',
	'microsmg_scope',
	'smg_drum',
	'smg_scope',
	'machinepistol_drum',
	'combatpdw_drum',
	'combatpdw_scope',
	'shotgun_suppressor',
	'heavyshotgun_drum',
	'assaultrifle_drum',
	'rifle_flashlight',
	'rifle_suppressor',
	'carbinerifle_drum',
	'carbinerifle_scope',
	'specialcarbine_drum',
	'compactrifle_drum',
	'sniperrifle_defaultclip',
	'sniper_scope',
	'snipermax_scope',
	'marksmanrifle_scope',
	'pistol_ammo',
	'rifle_ammo',
	'smg_ammo',
	'shotgun_ammo',
	'mg_ammo',
	'snp_ammo',
	'emp_ammo',
	'metalscrap',
	'copper',
	'aluminum',
	'aluminumoxide',
	'iron',
	'ironoxide',
	'steel',
	'lockpick',
	'advancedlockpick',
	'electronickit',
	'gatecrack',
	'screwdriverset',
	'drill',
	'nitrous',
	'repairkit',
	'advancedrepairkit',
	'tunerlaptop',
	'harness',
	'phone',
	'radio',
	'iphone',
	'samsungphone',
	'laptop',
	'tablet',
	'fitbit',
	'radioscanner',
	'pinger',
	'trojan_usb',
	'cryptostick',
	'rolex',
	'diamond_ring',
	'goldchain',
	'10kgoldchain',
	'goldbar',
	'handcuffs',
	'police_stormram',
	'diving_gear',
	'binoculars',
	'lighter',
	'labkey',
}
