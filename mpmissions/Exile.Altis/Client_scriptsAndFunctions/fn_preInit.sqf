private ['_code', '_function', '_file'];

{
    _code = '';
    _function = _x select 0;
    _file = _x select 1;

    _code = compileFinal (preprocessFileLineNumbers _file);

    missionNamespace setVariable [_function, _code];
}
forEach
[
	["JohnO_fnc_startingLoadout","Client_scriptsAndFunctions\Functions\JohnO_fnc_startingLoadout.sqf"],
	["JohnO_fnc_applyPressureToWound","Client_scriptsAndFunctions\Functions\JohnO_fnc_applyPressureToWound.sqf"],
	["JohnO_fnc_applyBandageToPlayer","Client_scriptsAndFunctions\Functions\JohnO_fnc_applyBandageToPlayer.sqf"],
	["JohnO_fnc_applyInstaDocToPlayer","Client_scriptsAndFunctions\Functions\JohnO_fnc_applyInstaDocToPlayer.sqf"],
	["JohnO_fnc_handleCustomEffects","Client_scriptsAndFunctions\Functions\JohnO_fnc_handleCustomEffects.sqf"],
	["JohnO_fnc_handleChemlightActions","Client_scriptsAndFunctions\Functions\JohnO_fnc_handleChemlightActions.sqf"],
	// Vehicle repair
	["JohnO_fnc_displayVehicleRepairInfo","Client_scriptsAndFunctions\Functions\JohnO_fnc_displayVehicleRepairInfo.sqf"],
	["JohnO_fnc_vehicleRepairCar","Client_scriptsAndFunctions\Functions\JohnO_fnc_vehicleRepairCar.sqf"],
	["JohnO_fnc_repairWheels","Client_scriptsAndFunctions\Functions\JohnO_fnc_repairWheels.sqf"],
	["JohnO_fnc_repairSingleWheel","Client_scriptsAndFunctions\Functions\JohnO_fnc_repairSingleWheel.sqf"],
	["JohnO_fnc_scavengeWheel","Client_scriptsAndFunctions\Functions\JohnO_fnc_scavengeWheel.sqf"],
	["JohnO_fnc_repairchopperhalf","Client_scriptsAndFunctions\Functions\JohnO_fnc_repairchopperhalf.sqf"],
	["JohnO_fnc_repairchopper","Client_scriptsAndFunctions\Functions\JohnO_fnc_repairchopper.sqf"],
	// Zombies
	["JohnO_fnc_handlePlayerZombieDetection","Client_scriptsAndFunctions\Functions\JohnO_fnc_handlePlayerZombieDetection.sqf"],
	// Season
	["JohnO_fnc_getCurrentSeason","Client_scriptsAndFunctions\Functions\JohnO_fnc_getCurrentSeason.sqf"],
	// Rest at fire
	["JohnO_fnc_restAtFire","Client_scriptsAndFunctions\Functions\JohnO_fnc_restAtFire.sqf"],
	["JohnO_fnc_crudeLightFire","Client_scriptsAndFunctions\Functions\JohnO_fnc_crudeLightFire.sqf"],
	// Cooking / hunting
	["JohnO_fnc_handlePlayerActions","Client_scriptsAndFunctions\Functions\JohnO_fnc_handlePlayerActions.sqf"],
	["JohnO_fnc_customConsume","Client_scriptsAndFunctions\Functions\JohnO_fnc_customConsume.sqf"],
	// Get amount of wheels on vehicles
	["JohnO_fnc_getVehicleType","Client_scriptsAndFunctions\Functions\JohnO_fnc_getVehicleType.sqf"],
	// Scavenge
	["JohnO_fnc_canScavenge","Client_scriptsAndFunctions\Functions\JohnO_fnc_canScavenge.sqf"],
	["JohnO_fnc_canSearchForBerries","Client_scriptsAndFunctions\Functions\JohnO_fnc_canSearchForBerries.sqf"],
	["JohnO_fnc_randomItem","Client_scriptsAndFunctions\Functions\JohnO_fnc_randomItem.sqf"],
	// hints
	["JohnO_fnc_displayHints","Client_scriptsAndFunctions\Functions\JohnO_fnc_displayHints.sqf"],
	// Update respect and tabs
	["JohnO_fnc_updateRespectAndTabs","Client_scriptsAndFunctions\Functions\JohnO_fnc_updateRespectAndTabs.sqf"],
	// Custom hit sounds
	["JohnO_fnc_playCustomHitSound","Client_scriptsAndFunctions\Functions\JohnO_fnc_playCustomHitSound.sqf"],
	//attach chemlight
	["JohnO_fnc_attachChemLight","Client_scriptsAndFunctions\Functions\JohnO_fnc_attachChemLight.sqf"]
];

true