/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_unit","_selectionName","_amountOfDamage","_sourceOfDamage","_typeOfProjectile","_currentDamage","_damageRequired"];
_unit             = _this select 0;
_selectionName    = _this select 1;
_amountOfDamage   = _this select 2;
_sourceOfDamage   = _this select 3;
_typeOfProjectile = _this select 4;

_currentDamage = damage _unit;
_damageRequired = 0.9;

if !(_typeOfProjectile == "") then
{
	if !(vehicle player != player) then 
	{
		player setBleedingRemaining 90;

		player setVariable ["JohnO_lastSourceOfDamage",_sourceOfDamage,true];

		if !(ExileRebornClient_CustomHit_soundIsPlaying) then
		{
			ExileRebornClient_CustomHit_soundIsPlaying = true;
			[] spawn JohnO_fnc_playCustomHitSound;
		};	

		titleText["","WHITE OUT",0.2];
		titleText["","WHITE IN",0.2];
	};	
};	


 

