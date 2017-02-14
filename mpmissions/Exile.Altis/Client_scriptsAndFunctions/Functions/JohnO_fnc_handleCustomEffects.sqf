
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

if (((ExileClientPlayerAttributes select 5) <= 35.5) && (time - ExileReborn_shiverCooldown >= ExileReborn_shiverCooldown_timeStamp)) then
{
	playSound "Shivering";
	ExileReborn_shiverCooldown_timeStamp = time;
	enableCamShake true;
	addCamShake [3,2,10];
	enableCamShake false;
};