private ["_bodyTemp"];

if !(alive player) then
{
	//Custom sound var 
	ExileRebornClient_soundIsPlaying = false;
	ExileReborn_playerIsResting = false;
};	

// Heartbeat when low health

if (((damage player) >= 0.85) && (time - ExileReborn_heartBeatInterval >= ExileReborn_lastHeartBeat) && (alive player)) then
{
	playSound ["SndExileHeartbeatFast", true]; 
	ExileReborn_lastHeartBeat = time;
};

// Shiver at low body temp
_bodyTemp = [ExileClientPlayerAttributes select 5, 1] call ExileClient_util_math_round; 
if ((_bodyTemp <= 35.5) && (time - ExileReborn_shiverCooldown >= ExileReborn_shiverCooldown_timeStamp)) then
{
	playSound ["Shivering",true];
	ExileReborn_shiverCooldown_timeStamp = time;
	enableCamShake true;
	addCamShake [1,20,10];
	enableCamShake false;
};