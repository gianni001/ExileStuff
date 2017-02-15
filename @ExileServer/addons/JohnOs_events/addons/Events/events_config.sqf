/////////////////////
/// ALTIS ///////////
/////////////////////

ExileRebornVersion = "0.8.2";
publicVariable "ExileRebornVersion";

Event_DEBUG_Location = [0,0,0];
Persistent_UID = "76561197993112948";												// Change me..
Event_world_centerPosition = getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition");
Event_world_size = 30000;
Event_extraDebugLogging = true;
Event_RoamingAI_DebugEvent = false;

/** Zombie stuff **/

Event_IdleZombieArray = [];
Event_lastMoan = time;
Event_moanCD = 15;
Event_zombieHoard_lastActivated = time;
Event_zombieHoard_coolDown = 1800;

/** Storm stuff**/

Event_lightningSpawnInterval = 2400;										

/** Supply Drop settings **/

Event_SupplyDrop_MinLootAmount = 1; 												// Minimum amount of loot in the vehicle drop
Event_SupplyDrop_MaxLootAmount = 5;                                                 // Maximum amount of loot = Min + random max
Event_SupplyDrop_DebugEvent = false; 												// Debug event for testing

Event_SupplyDrop_PotentialSupplyVehicles = ["B_Heli_Transport_03_unarmed_F"];
Event_SupplyDrop_PotentialSupplyDropVehicles = 
[
	"Exile_Car_Ifrit",
	"Exile_Car_Hunter",
	"Exile_Car_HEMMT",
	"Exile_Car_Strider"
];

Event_SupplyDrop_maxPersistentArmoured = 2; 										// The server will only para drop new persistent armoured vehicles upto this amount each

/** Supply drop Safe Pos settings **/

Event_SupplyDrop_Min = 5; 															// Minimum distance from center position in meters
Event_SupplyDrop_MaxDist = Event_world_size;										// Maximum position from center position in meters	
Event_SupplyDrop_MinDist = 10; 														// Minimum distance from objects		
Event_SupplyDrop_WaterMode = 0; 													// 1 - Pos will be on water 0 - Pos will be on land
Event_SupplyDrop_ShoreMode = 0; 													// 1 - Pos will be on a shoreline 0 - Pos will not be on a shoreline 
Event_SupplyDrop_Height = 150; 														// Height of the supply drop

Event_SupplyDrop_MarkerType = "ExileMissionModerateIcon"; 							// Marker type at the vehicle drop location
Event_SupplyDrop_MarkerText = "Vehicle Drop";										// Marker text at the vehicle drop location
Event_SupplyDrop_MarkerDuration = 1800; 											// Time the marker will be visible at the drop location

/** Helicrash settings **/

Event_HeliCrash_MaxEvents = 6;
Event_HeliCrash_Count = 0;
Event_HeliCrash_AmountOfLoot = 7; 													// Amount of loot piles in the crate
Event_HeliCrash_DebugEvent = false; 												// Debug for testing purposes
Event_HeliCrash_Positions = [];

/** HeliCrash safe pos settings **/

Event_HeliCrash_Min = 5; 															// Minimum distance from center position in meters
Event_HeliCrash_MaxDist = Event_world_size;											// Maximum position from center position in meters	
Event_HeliCrash_MinDist = 10; 														// Minimum distance from objects		
Event_HeliCrash_WaterMode = 0; 														// 1 - Pos will be on water 0 - Pos will be on land
Event_HeliCrash_ShoreMode = 0; 														// 1 - Pos will be on a shoreline 0 - Pos will not be on a shoreline 

Event_HeliCrash_MarkerType = "ExileMissionHardcoreIcon"; 							// Marker type at crash site
Event_HeliCrash_MarkerText = "Crash Site";											// Marker text at crash site
Event_HeliCrash_MarkerDuration = 1800; 											    // Time the event will last
Event_HeliCrash_timeStamp = diag_tickTime;

/** Roaming AI **/

CenterLogicLocation = getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition"); 
_logic = "logic" createVehicleLocal CenterLogicLocation;
allTownLocations = nearestLocations [_logic, ["NameVillage","NameCity","NameCityCapital"], 30000];

Event_AllTownLocations = [];														

Resistance setFriend [East, 0];
East setFriend [Resistance, 0];
Resistance setFriend [West, 0];
West setFriend [Resistance, 0];

{
	_index = _forEachIndex;
	_positionIndex = allTownLocations select _index;
	_position = position _positionIndex;
	Event_AllTownLocations pushBack _position;
} forEach allTownLocations;

if (Event_RoamingAI_DebugEvent) then
{
	{
		_index = _forEachIndex;
		_posIdex = allTownLocations select _index;
		_pos = position _posIdex;
		_marker = createMarker [ format["HeliCrash%1", diag_tickTime],_pos];
		_marker setMarkerType "mil_warning";
		_marker setMarkerText "AI SPAWN POINT";
		sleep 0.01;
	} forEach allTownLocations;
};

/** SIMULATION MANAGER **/

Event_SimulationManager_Interval = 15;
Event_SimulationManager_SimulateRange = 800;
Event_ALLAI_SimulatedUnits = [];
Event_SimulationManager_DebugEvent = false;

/*
	Usage:
	Event_Cleanup_objectArray pusback [Object,deletion time, is marker (boolean)];
*/

Event_Cleanup_objectArray = [];

/*

	Compile required functions and execute the scripts

*/

Event_HeliCrash_monitorCount = 0;
Event_SupplyDrop_monitorCount = 0;

uiSleep 20;

[] execVM "JohnOs_events\addons\Events\Adjust_Server_DateAndTime.sqf";
[] execVM "JohnOs_events\addons\Events\Persistent_vehicles\spawn_vehicles.sqf";

[] spawn JohnO_fnc_generateMapGarbageAndWrecks;

	
[300, JohnO_fnc_eventMonitor, [], true] call ExileServer_system_thread_addtask;

[660, JohnO_fnc_heliCrash_new, [], true] call ExileServer_system_thread_addtask;
[60, JohnO_fnc_handleCrashSmoke, [], true] call ExileServer_system_thread_addtask;

[900, JohnO_fnc_supplyDrop_spawnEvent, [], true] call ExileServer_system_thread_addtask;

[Event_lightningSpawnInterval, JohnO_fnc_spawnStormEvent, [], true] call ExileServer_system_thread_addtask;

[2, JohnO_fnc_zombieIdleBehaviour, [], true] call ExileServer_system_thread_addtask;
[30, JohnO_fnc_spawnZombieHoardEvent, [], true] call ExileServer_system_thread_addtask;

[15, JohnO_fnc_simulationManager, [], true] call ExileServer_system_thread_addtask;	

_fuelStations = nearestObjects [[0,0,0], ['Land_fs_feed_F','Land_FuelStation_Feed_F'], 2000000];
{
	_x enableSimulationGlobal false;
} forEach _fuelStations;

// Make the map look damaged

ExileReborn_allMapBuildings = [0,0,0] nearObjects ["House", 100000];
{
	_x setDamage 0.9;
} forEach ExileReborn_allMapBuildings;	

//SP Testing
/*
[] spawn 
{
	while {true} do
	{
		[] call JohnO_fnc_heliCrash_new;
		[] call JohnO_fnc_eventMonitor;
		[] call JohnO_fnc_simulationManager;
		//[] call JohnO_fnc_supplyDrop_spawnEvent;
		[] call JohnO_fnc_spawnStormEvent;
		uiSleep 15;
	};	
};
[] spawn 
{
	while {true} do
	{
		[] call JohnO_fnc_zombieIdleBehaviour;
		uiSleep 1;
		hint str count diag_activeSQFScripts;
	};	
};