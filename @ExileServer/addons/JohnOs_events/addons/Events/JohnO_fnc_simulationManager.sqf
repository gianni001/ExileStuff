private ["_aliveUnits","_nearPlayers","_nearVehicles","_nearPlayers","_timeStamp","_diedAt","_nearPlayers_AI","_nearVehicles_AI","_cleanUpCount"];

_aliveUnits = Event_ALLAI_SimulatedUnits; 

Event_simulationManager_hiddenObjectsCount = 0;
{	
	if !(isPlayer _x) then
	{	
		if ([getPos _x,800] call ExileClient_util_world_isAlivePlayerInRange) then
		{
			_x enableSimulationGlobal true;
			_x hideObjectGlobal false;
			_aliveUnits = _aliveUnits - [_x]; 
		}
		else
		{
			_x enableSimulationGlobal false;
			_x hideObjectGlobal true;
			Event_simulationManager_hiddenObjectsCount = Event_simulationManager_hiddenObjectsCount + 1;
		};
	};	

} forEach allUnits;

if (Event_extraDebugLogging) then
{
	if (Event_simulationManager_hiddenObjectsCount > 0) then
	{	
		format ["[SIMULATION MANAGER] Simulation manager has hidden %1 entities",Event_simulationManager_hiddenObjectsCount] call ExileServer_util_log;
	};	
};	

/****************** Deletion of units added to the cleanup manager *************************/

Event_simulationManager_cleanUpCount = 0;
{
	_timeStamp = _x getVariable "JohnO_RoaminAI";
	
	if !(isNil "_timeStamp") then
	{
		if ((time >= _timeStamp) && !([getPos _x,800] call ExileClient_util_world_isAlivePlayerInRange)) then
		{
			deleteVehicle _x;
			Event_ALLAI_SimulatedUnits = Event_ALLAI_SimulatedUnits - [_x];
			Event_simulationManager_cleanUpCount = Event_simulationManager_cleanUpCount + 1;
		};
	};		
} forEach AllUnits;

if (Event_extraDebugLogging) then
{
	if (Event_simulationManager_cleanUpCount > 0) then
	{	
		format ["[CLEANUP MANAGER] Deleted %1 units",Event_simulationManager_cleanUpCount] call ExileServer_util_log;
	};
};	
/****************** Delete Objects and markers **************************/

{
	_index = _forEachIndex;
	_objectArray = Event_Cleanup_objectArray select _index;
	_object = _objectArray select 0;
	_time = _objectArray select 1;
	_isMarker = _objectArray select 2;

	if (time >= _time) then
	{
		if (_isMarker) then
		{	
			if !([getMarkerPos _object,800] call ExileClient_util_world_isAlivePlayerInRange) then
			{	
				deleteMarker _object;
				Event_Cleanup_objectArray deleteAt _forEachIndex;
			};	
		}
		else
		{
			if !([getPos _object,800] call ExileClient_util_world_isAlivePlayerInRange) then
			{	
				deleteVehicle _object;
				Event_Cleanup_objectArray deleteAt _forEachIndex;
			};	
		};
	};	
	
} forEach Event_Cleanup_objectArray;