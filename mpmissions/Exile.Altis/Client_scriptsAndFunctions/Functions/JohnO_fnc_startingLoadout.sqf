uiSleep 1;

private ["_uniform","_uniformSelection","_headGear","_headGearSelection"];
/*
_safeToExecute = false;
_failSafe = time + 120;

waitUntil 
{
	if (!(alive player) || (time > _failSafe)) exitwith {};
	if (((getPosATL player select 2) < 2) || (isTouchingGround player)) then
	{
		_safeToExecute = true;
	};	
	_safeToExecute
};
*/
_uniformSelection = ["U_C_Poloshirt_stripped","U_C_Poloshirt_salmon","U_Rangemaster","U_OrestesBody","U_C_Poloshirt_burgundy","	U_IG_Guerilla2_1","U_IG_Guerilla3_2","U_C_Poor_1"];
_headGearSelection = ["	H_Bandanna_khk","H_Watchcap_blk","H_Watchcap_camo","H_TurbanO_blk","H_Booniehat_mcamo","H_Booniehat_dirty","H_Cap_blk","H_Cap_tan"];

_uniform = (selectRandom _uniformSelection);
_headGear = (selectRandom _headGearSelection);

player forceAddUniform _uniform;
player addHeadgear _headGear;
player addVest "V_Rangemaster_belt";
player addItemToUniform "Exile_Item_Bandage";
player addItemToUniform "Chemlight_blue";