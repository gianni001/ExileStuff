/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */
 
if (!hasInterface || isServer) exitWith {};
 
setTerrainGrid 3.125;
setViewDistance 1500;

[] execVM "Client_scriptsAndFunctions\initClient.sqf";
[] execVM "addons\blowout\module\blowout_client.sqf";
//[] execVM "statusIcons\statusIcons.sqf";