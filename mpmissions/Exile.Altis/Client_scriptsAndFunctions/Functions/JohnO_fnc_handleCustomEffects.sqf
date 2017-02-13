
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