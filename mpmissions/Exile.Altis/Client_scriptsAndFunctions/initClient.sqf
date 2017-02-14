player setVariable ["JohnO_isBeingHunted",false];

ExileReborn_lastHealingReward = time;
ExileReborn_healingCoolDown = 180;
ExileReborn_lastHeartBeat = time;
ExileReborn_heartBeatInterval = 10;
ExileReborn_shiverCooldown = 30;
ExileReborn_shiverCooldown_timeStamp = time;

ExileRebornClient_CustomHit_soundIsPlaying = false;

ExileReborn_userActionTimeout = 30;
ExileReborn_userActionTimeout_lastCheck = time;
ExileReborn_userActionArray = [];
ExileReborn_userActions = [];
/*
ExileClientLoadedIn = true;
[] call ExileClient_system_thread_initialize;
[] call ExileClient_system_process_postInit;
*/
[] execVM "Client_scriptsAndFunctions\Scripts\JohnO_script_createPlayerActions.sqf";
[] execVM "Client_scriptsAndFunctions\Scripts\JohnO_script_createHints.sqf";

[1, JohnO_fnc_handleCustomEffects, [], true] call ExileClient_system_thread_addtask;
[300, JohnO_fnc_handlePlayerZombieDetection, [], true] call ExileClient_system_thread_addtask;
[2, JohnO_fnc_handlePlayerActions, [], true] call ExileClient_system_thread_addtask;
[600, JohnO_fnc_displayHints, [], true] call ExileClient_system_thread_addtask;
