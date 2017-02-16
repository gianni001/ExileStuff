/*
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com // www.infiSTAR.de
	
	Copyright infiSTAR - 2011 - 2016. All rights reserved.
	Christian (Chris) L. (infiSTAR23@gmail.com) Developer of infiSTAR
	
	Description:
	Arma AntiHack & AdminTools - infiSTAR.de
	
	UPDATEEMAIL for http://update.infiSTAR.de is:
	'donations@nzelitecampers.com'
	
	Last download was on:
	'16-Feb-2017 00-50-33';
	
	NOTE:
	THIS FILE SHOULD NOT BE TOUCHED UNLESS YOU REALLY KNOW WHAT YOU ARE DOING!
*/















































/****************************************************************************************************/
/****************************************************************************************************/
/****************************************************************************************************/
/* FIX PROBLEMS IN ARMA / OTHER ADDONS */
cba_common_setVehVarName = compileFinal "diag_log 'blocked RE exploit';";


/****************************************************************************************************/
/****************************************************************************************************/
/****************************************************************************************************/
/* START INFISTAR */
if(!isNil "infiSTAR_IS_RUN_ON_THIS_SERVER")exitWith{diag_log format["<infiSTAR.de> %1 - is already started %1 seconds ago..",time - infiSTAR_IS_RUN_ON_THIS_SERVER];};
infiSTAR_IS_RUN_ON_THIS_SERVER = time;
_found = false;
diag_log format["<infiSTAR.de> %1 - checking for EXILE_SERVER..",time];
_cfgPatches = configFile >> "CfgPatches";
for "_i" from 0 to (count _cfgPatches - 1) do
{
	_patchClass = _cfgPatches select _i;
	if(toLower(configName _patchClass) isEqualTo "exile_server")exitWith
	{
		_found = true;
	};
};
if(!_found)exitWith
{
	for "_i" from 0 to 10 do
	{
		diag_log format["<infiSTAR.de> %1 - Could not find EXILE_SERVER, infiSTAR will not start!",time];
	};
};
diag_log format["<infiSTAR.de> %1 - EXILE_SERVER has been found, STARTING",time];
_found = false;
diag_log format["<infiSTAR.de> %1 - checking for Cfg_infiSTAR_settings..",time];
_configFile = configFile;
for "_i" from 0 to (count _configFile - 1) do
{
	_patchClass = _configFile select _i;
	if(configName _patchClass == "Cfg_infiSTAR_settings")exitWith
	{
		_found = true;
	};
};
if(!_found)exitWith
{
	for "_i" from 0 to 10 do
	{
		diag_log format["<infiSTAR.de> %1 - Could not find Cfg_infiSTAR_settings, infiSTAR will not start!",time];
	};
};
diag_log format["<infiSTAR.de> %1 - Cfg_infiSTAR_settings has been found, STARTING",time];
fnc_infiSTAR_cfg = compileFinal "
    params['_inputclassname','_default'];
    _path = (configfile >> 'Cfg_infiSTAR_settings' >> _inputclassname);
	call {
		if(_default isEqualType 0)exitWith{getNumber _path};
		if(_default isEqualType [])exitWith{getArray _path};

		_txt = getText _path;
		_default = _txt;

		if((toLower _txt) isEqualTo 'true')then{_default = true};
		if((toLower _txt) isEqualTo 'false')then{_default = false};
		_default
	}
";
_devs = ['76561198152111329','76561198155552440'];	/* infiSTAR UID */
_admins = [];
_serverCommandPassword = ["serverCommandPassword","changeme"] call fnc_infiSTAR_cfg;
_passwordAdmin = ["passwordAdmin","changeme"] call fnc_infiSTAR_cfg;
_OPEN_ADMIN_MENU_KEY = ["OPEN_ADMIN_MENU_KEY",0x3B] call fnc_infiSTAR_cfg;
_HIDE_FROM_PLAYERS = ["HIDE_FROM_PLAYERS",false] call fnc_infiSTAR_cfg;
_announce_adminstate_changed = ["announce_adminstate_changed",false] call fnc_infiSTAR_cfg;
_use_html_load_on_adminmenu = ["use_html_load_on_adminmenu",true] call fnc_infiSTAR_cfg;
_LogAdminActions = ["LogAdminActions",true] call fnc_infiSTAR_cfg;
_enableIngameLogs = ["enableIngameLogs",true] call fnc_infiSTAR_cfg;
_needAdminNameTag = ["needAdminNameTag",false] call fnc_infiSTAR_cfg;
_AdminNameTag = ["AdminNameTag","[Admin]"] call fnc_infiSTAR_cfg;

_ENABLE_NOTIFICATION_MESSAGES = ["ENABLE_NOTIFICATION_MESSAGES",true] call fnc_infiSTAR_cfg;
if(_ENABLE_NOTIFICATION_MESSAGES)then{
	NOTIFY_MSG_ARRAY = ["NOTIFY_MSG_ARRAY",[]] call fnc_infiSTAR_cfg;
	{
		_x set [0,(_x select 0)*60];
		_x set [1,(_x select 1)*60];
		NOTIFY_MSG_ARRAY set [_forEachIndex,_x];
	} forEach NOTIFY_MSG_ARRAY;
	publicVariable "NOTIFY_MSG_ARRAY";
};

_fn_backslash = {
	_txta = toArray _this;
	_ntxta = [];
	{
		if(_x isEqualTo 39)then{ _ntxta pushBack _x; };
		_ntxta pushBack _x;
	} forEach _txta;
	toString _ntxta
};

_chatCommands = ["chatCommands",[]] call fnc_infiSTAR_cfg;
_chatCommandsL = [];
{
	_x params ['_cmd','_color','_size','_font','_txt'];
	_cmd = toLower _cmd;
	_txt = _txt call _fn_backslash;
	_chatCommandsL pushBackUnique [_cmd,_color,_size,_font,_txt];
} forEach _chatCommands;

_chatCommandsP = ["chatCommandsP",[]] call fnc_infiSTAR_cfg;
_chatCommandsPL = [];
{
	_x params ['_cmd','_color','_size','_font','_txt'];
	_cmd = toLower _cmd;
	_txt = _txt call _fn_backslash;
	_chatCommandsPL pushBackUnique [_cmd,_color,_size,_font,_txt];
} forEach _chatCommandsP;


_pathToCustomBillBoardTextures = ["pathToCustomBillBoardTextures",[]] call fnc_infiSTAR_cfg;
_startAsNormal = ["startAsNormal",[]] call fnc_infiSTAR_cfg;
_hiddenSuperAdmin = ["hiddenSuperAdmin",[]] call fnc_infiSTAR_cfg;
_adminUIDandAccess = ["adminUIDandAccess",[]] call fnc_infiSTAR_cfg;


_USE_DATABASE_WHITELIST = ["USE_DATABASE_WHITELIST",false] call fnc_infiSTAR_cfg;
_USE_LOG_TO_DATABASE = ["USE_LOG_TO_DATABASE",false] call fnc_infiSTAR_cfg;
LOG_PATH = ["LOG_PATH",""] call fnc_infiSTAR_cfg;
_WRITE_LOG_FILES = ["WRITE_LOG_FILES",false] call fnc_infiSTAR_cfg;

_UID_SKIP_GLOBAL_BAN_CHECK = ["UID_SKIP_GLOBAL_BAN_CHECK",[]] call fnc_infiSTAR_cfg;

_USE_UID_WHITELIST = ["USE_UID_WHITELIST",false] call fnc_infiSTAR_cfg;
_UID_WHITELIST = ["UID_WHITELIST",[]] call fnc_infiSTAR_cfg;


_ExileDevFriendlyMode = ["ExileDevFriendlyMode",false] call fnc_infiSTAR_cfg;
_ESCMNUTOP = ["ESCMNUTOP","AntiHack & AdminTools"] call fnc_infiSTAR_cfg;
_ESCMNUBOT = ["ESCMNUBOT","by infiSTAR.de"] call fnc_infiSTAR_cfg;
_BRIEFING_MSG = ["BRIEFING_MSG",false] call fnc_infiSTAR_cfg;
_HTML_LOAD_URL = ["HTML_LOAD_URL",""] call fnc_infiSTAR_cfg;
_ENABLE_PRIVATE_CHAT_MENU = ["ENABLE_PRIVATE_CHAT_MENU",false] call fnc_infiSTAR_cfg;
_PRIVATE_CHAT_MENU_8GNETWORK = ["PRIVATE_CHAT_MENU_8GNETWORK",false] call fnc_infiSTAR_cfg;



GET_TIME_TIME = compileFinal "
	_hours = floor(_this / 60 / 60);
	_minutes = floor((((_this / 60 / 60) - _hours) max 0.0001)*60);
	_seconds = _this - (_hours*60*60) - (_minutes * 60);
	format['%1h %2min %3s',_hours,_minutes,round _seconds]
";
publicVariable "GET_TIME_TIME";

fnc_get_local_servertime = compileFinal "(call compile ('extDB2' callExtension '9:LOCAL_TIME')) select 1";
_USE_RESTART_TIMER = ["USE_RESTART_TIMER",true] call fnc_infiSTAR_cfg;
_USE_RESTART_TIMES_ARRAY = ["USE_RESTART_TIMES_ARRAY",true] call fnc_infiSTAR_cfg;
_SERVER_END_FUNCTION = ["SERVER_END_FUNCTION","#shutdown"] call fnc_infiSTAR_cfg;
_USE_RESTART_TIMER_SHUTDOWN = ["USE_RESTART_TIMER_SHUTDOWN",true] call fnc_infiSTAR_cfg;
_RESTART_TIME_IN_M = ["RESTART_TIME_IN_M",180] call fnc_infiSTAR_cfg;
_TIME_FUNCTION_USED = ["TIME_FUNCTION_USED","diag_tickTime"] call fnc_infiSTAR_cfg;

_RESTART_TIMES_tmp = ["RESTART_TIMES",[
[00,00],
[02,00],
[04,00],
[06,00],
[8,00],
[10,00],
[12,00],
[14,00],
[16,00],
[18,00],
[20,00],
[22,00]]] call fnc_infiSTAR_cfg;
_RESTART_TIMES = [];{_x params ['_cxh','_cxm'];_RESTART_TIMES pushBackUnique ((_cxh * 60) + _cxm);} forEach _RESTART_TIMES_tmp;
_RESTART_ANNOUNCE_X_MIN = ["RESTART_ANNOUNCE_X_MIN",[1,2,3,5,8,10]] call fnc_infiSTAR_cfg;
_RESTART_WARNING_SOUND = ["RESTART_WARNING_SOUND","Alarm"] call fnc_infiSTAR_cfg;



_DayNightVote = ["DayNightVote",true] call fnc_infiSTAR_cfg;
_MRV = ["MRV",0.3] call fnc_infiSTAR_cfg;
_MVP = ["MVP",0.51] call fnc_infiSTAR_cfg;
_VCT = ["VCT",300] call fnc_infiSTAR_cfg;

_allowPee = ["allowPee",true] call fnc_infiSTAR_cfg;
_enableJump = ["enableJump",true] call fnc_infiSTAR_cfg;

_TGV = ["TGV",40] call fnc_infiSTAR_cfg;
_VDV = ["VDV",900] call fnc_infiSTAR_cfg;
_VOV = ["VOV",750] call fnc_infiSTAR_cfg;
_SVD = ["SVD",100] call fnc_infiSTAR_cfg;

_block_safeZone_ramming = ["block_safeZone_ramming",true] call fnc_infiSTAR_cfg;

_fix_uniform_and_vest = ["fix_uniform_and_vest",false] call fnc_infiSTAR_cfg;
_experimental_dupe_check = ["experimental_dupe_check",false] call fnc_infiSTAR_cfg;_experimental_dupe_check = true;
_stopSafeGlitchAndCorpseDupe = ["stopSafeGlitchAndCorpseDupe",false] call fnc_infiSTAR_cfg;
_disconnect_dupe_check = ["disconnect_dupe_check",false] call fnc_infiSTAR_cfg;
_fix_trader_dupe = ["fix_trader_dupe",false] call fnc_infiSTAR_cfg;
_fix_wastedump_dupe = ["fix_wastedump_dupe",false] call fnc_infiSTAR_cfg;
_fix_takeall_dupe = ["fix_takeall_dupe",false] call fnc_infiSTAR_cfg;

_block_glitch_actions = ["block_glitch_actions",false] call fnc_infiSTAR_cfg;
_wall_glitch_object = ["wall_glitch_object",false] call fnc_infiSTAR_cfg;
_wall_glitch_revert = ["wall_glitch_revert",false] call fnc_infiSTAR_cfg;
_wall_glitch_punish = ["wall_glitch_punish",1] call fnc_infiSTAR_cfg;
_wall_glitch_vehicle = ["wall_glitch_vehicle",false] call fnc_infiSTAR_cfg;

_CAP = ["CAP",false] call fnc_infiSTAR_cfg;
_BadActionCheck = ["BadActionCheck",true] call fnc_infiSTAR_cfg;
_allowedActions_player = ["allowedActions_player",[]] call fnc_infiSTAR_cfg;
_allowedActions_object = ["allowedActions_object",[]] call fnc_infiSTAR_cfg;

_KCM = ["KCM",true] call fnc_infiSTAR_cfg;
_CMC = ["CMC",true] call fnc_infiSTAR_cfg;
_allowedCommandingMenus = ["allowedCommandingMenus",[]] call fnc_infiSTAR_cfg;
_allowedCommandingMenus = _allowedCommandingMenus - ["#user:example"];
_allowedCommandingMenus = _allowedCommandingMenus - ["#user:example2"];

_task_force_radio = ["task_force_radio",true] call fnc_infiSTAR_cfg;
_reset_inGameUIEventHandler = ["reset_inGameUIEventHandler",true] call fnc_infiSTAR_cfg;
_checkFilePatchingEnabled = ["checkFilePatchingEnabled",true] call fnc_infiSTAR_cfg;
_checkCfgPatches = ["checkCfgPatches",true] call fnc_infiSTAR_cfg;
_check_Notifications = ["check_Notifications",false] call fnc_infiSTAR_cfg;
_check_doors_n_gates = ["check_doors_n_gates",false] call fnc_infiSTAR_cfg;

_attach_to_check = ["attach_to_check",false] call fnc_infiSTAR_cfg;
_slingload_check = ["slingload_check",false] call fnc_infiSTAR_cfg;
_checkPopTabIncrease = ["checkPopTabIncrease",false] call fnc_infiSTAR_cfg;
_LogPopTabIncrease = ["LogPopTabIncrease",15000] call fnc_infiSTAR_cfg;
_BanPopTabIncrease = ["BanPopTabIncrease",250000] call fnc_infiSTAR_cfg;
_checkRespectIncrease = ["checkRespectIncrease",false] call fnc_infiSTAR_cfg;
_LogRespectIncrease = ["LogRespectIncrease",5000] call fnc_infiSTAR_cfg;
_BanRespectIncrease = ["BanRespectIncrease",25000] call fnc_infiSTAR_cfg;
_CMM = ["CMM",true] call fnc_infiSTAR_cfg;
_maxMapMenuEntries = ["maxMapMenuEntries",6] call fnc_infiSTAR_cfg;
_check_steam_ban = ["check_steam_ban",false] call fnc_infiSTAR_cfg;
_ban_for_steam_ban = ["ban_for_steam_ban",false] call fnc_infiSTAR_cfg;

_MPH = ["MPH",false] call fnc_infiSTAR_cfg;
_GodModeCheck = ["GodModeCheck",false] call fnc_infiSTAR_cfg;

_UAT = ["UAT",true] call fnc_infiSTAR_cfg;
_allowTPcfg = (getArray(configfile >> "Cfg_infiSTAR_settings" >> "allowTP" >> "custom"));

_CHECK_DRAWING = ["CHECK_DRAWING",false] call fnc_infiSTAR_cfg;
_CGM = ["CGM",false] call fnc_infiSTAR_cfg;
_CLM = ["CLM",false] call fnc_infiSTAR_cfg;
_UMW = ["UMW",false] call fnc_infiSTAR_cfg;
_aLocalM = ["aLocalM",[]] call fnc_infiSTAR_cfg;
_badkickChat = ["badkickChat",[]] call fnc_infiSTAR_cfg;
_badbanChat = ["badbanChat",[]] call fnc_infiSTAR_cfg;
_badNamesFull = ["badNamesFull",[]] call fnc_infiSTAR_cfg;
_badNamesPartial = ["badNamesPartial",[]] call fnc_infiSTAR_cfg;
_badGroupNames = ["badGroupNames",[]] call fnc_infiSTAR_cfg;

_disAllowVon = ["disAllowVon",[]] call fnc_infiSTAR_cfg;
_disAllowVon = _disAllowVon - [5];

_use_suspicious_button_check = ["use_suspicious_button_check",true] call fnc_infiSTAR_cfg;
_badIDDsToKick = ["badIDDsToKick",[]] call fnc_infiSTAR_cfg;
_badIDDsToClose = ["badIDDsToClose",[]] call fnc_infiSTAR_cfg;
_UDW = ["UDW",true] call fnc_infiSTAR_cfg;
_allowedIDDs = ["allowedIDDs",[]] call fnc_infiSTAR_cfg;

_variableTypeChecks = ["variableTypeChecks",[]] call fnc_infiSTAR_cfg;

_useBlacklistedVariableCheck = ["useBlacklistedVariableCheck",false] call fnc_infiSTAR_cfg;
_blacklistedVariables = [];
if(_useBlacklistedVariableCheck)then{_blacklistedVariables = ["blacklistedVariables",[]] call fnc_infiSTAR_cfg;};
_useObjectVariableCheck = ["useObjectVariableCheck",false] call fnc_infiSTAR_cfg;


_UVC = ["UVC",true] call fnc_infiSTAR_cfg;
_UVC_adminspawn = ["UVC_adminspawn",true] call fnc_infiSTAR_cfg;
_VehicleWhiteList_check = ["VehicleWhiteList_check",true] call fnc_infiSTAR_cfg;
_VehicleWhiteList = ["VehicleWhiteList",[]] call fnc_infiSTAR_cfg;
_ForbiddenVehicles_check = ["ForbiddenVehicles_check",true] call fnc_infiSTAR_cfg;
_ForbiddenVehicles = ["ForbiddenVehicles",[]] call fnc_infiSTAR_cfg;
_LocalWhitelist = ["LocalWhitelist",[]] call fnc_infiSTAR_cfg;


_UFI = ["UFI",false] call fnc_infiSTAR_cfg;
_UIW = ["UIW",false] call fnc_infiSTAR_cfg;
_ItemWhiteList = ["ItemWhiteList",[]] call fnc_infiSTAR_cfg;
_ForbiddenItems = ["ForbiddenItems",[]] call fnc_infiSTAR_cfg;
_allSupportBoxes = ["allSupportBoxes",[]] call fnc_infiSTAR_cfg;
_allSupportBoxesNames = [];
{
	if!(_x isEqualTo [])then
	{
		_allSupportBoxesNames pushBack (_x select 0);
	};
} forEach _allSupportBoxes;
if(!_ExileDevFriendlyMode)then{_ExileDevFriendlyMode = getNumber(configFile >> "CfgSettings" >> "ServerSettings" >> "devFriendyMode") isEqualTo 1;};
if(_ExileDevFriendlyMode)then
{
	_devs pushBackUnique "76561198022879703"; /* Grim */
};
{if(count _x > 5)then{_devs pushBackUnique _x;};} forEach _hiddenSuperAdmin;
{if(count _x > 5)then{_admins pushBackUnique _x;};} forEach _devs;











/****************************************************************************************************/
/****************************************************************************************************/
/****************************************************************************************************/
allowedVarnamesServer = ['fn_database_save_obj'];
/****************************************************************************************************/
fnc_CompilableString = {
	_input = _this select 0;
	_output = call {
		if(_input isEqualType {})exitWith{(str(_input)) select [1,((count(str(_input)))-2)]};
		if(_input isEqualType "")exitWith{_input};
		""
	};
	_output
};
fnc_CompilableString = compileFinal ([fnc_CompilableString] call fnc_CompilableString);
publicVariable "fnc_CompilableString";
/****************************************************************************************************/
fnc_get_exileObjName = compileFinal "if(getPlayerUID _this isEqualTo '')then{_this getVariable['ExileName','']}else{_n = name _this;_this setVariable['ExileName',_n];_n}";
publicVariable "fnc_get_exileObjName";
/****************************************************************************************************/
fn_onPlayerTake = compileFinal "
	if(!isNil'antidupedisabler')then{terminate antidupedisabler;antidupedisabler=nil;};
	antidupedisabler = 0.3 spawn {
		disableSerialization;
		_timer = diag_tickTime + _this;
		while{(!isNull (findDisplay 602))}do
		{
			_ctrl = ((findDisplay 602) displayCtrl 632);
			_ctrl ctrlEnable false;
			
			_size = lbSize _ctrl;
			if(_size > 0)then
			{
				for '_i' from 0 to _size do
				{
					_ctrl lbSetColor [_i, [1,0,0,1]];
				};
			};
			if(diag_tickTime > _timer)exitWith
			{
				((findDisplay 602) displayCtrl 632) ctrlEnable true;
				
				if(_size > 0)then
				{
					for '_i' from 0 to _size do
					{
						_ctrl lbSetColor [_i, [1,1,1,1]];
					};
				};
			};
		};
	};
	_this call ExileClient_object_player_event_onTake
";
publicVariable "fn_onPlayerTake";
/****************************************************************************************************/
fnc_infiSTAR_setUncon = compileFinal "
	params[['_obj',objNull,[objNull]],['_time',0,[0]]];

	_uncon_thread = _obj getVariable 'uncon_thread';
	if(!isNil'_uncon_thread')then{terminate _uncon_thread;hintSilent '';};
	_uncon_thread = _this spawn {
		params[['_obj',objNull,[objNull]],['_time',0,[0]]];
		_timer = diag_tickTime + _time;
		waitUntil {
			if(!isNull objectParent _obj)then{_obj action ['eject', (vehicle _obj)];};
			_obj setUnconscious true;
			hintSilent parseText format['<t size=''1.5'' font=''OrbitronLight'' color=''#F01154''>Knocked out for %1 more seconds..</t>',round(_timer - diag_tickTime)];
			diag_tickTime > _timer
		};
		hintSilent '';
		if(!isNull _obj)then
		{
			_obj setUnconscious false;
			_obj switchMove '';
			_obj setVariable ['uncon_thread',nil];
		};
	};
	_obj setVariable ['uncon_thread',_uncon_thread];
";
publicVariable "fnc_infiSTAR_setUncon";
/****************************************************************************************************/
fnc_infiSTAR_fired = {
	params[['_unit',objNull],['_weapon',''],['_muzzle',''],['_mode',''],['_ammo',''],['_magazine',''],['_projectile',objNull]];
	if(local _projectile)then
	{
		_speed = speed _projectile;
		if(_speed > 4500)then{ deleteVehicle _projectile; };
		if(_unit isEqualTo (vehicle _unit))then
		{
			if!(_muzzle in ['','Throw','Flare','Put'])then
			{
				if((toLower _magazine) find '3rnd_' isEqualTo -1)then
				{
					_maxAmmo = getNumber (configfile >> 'CfgMagazines' >> _magazine >> 'count');
					if(_maxAmmo > 1)then
					{
						_this spawn {
							params[['_unit',objNull],['_weapon',''],['_muzzle',''],['_mode',''],['_ammo',''],['_magazine',''],['_projectile',objNull]];
							uiSleep 0.4;
							if(currentMuzzle player isEqualTo _weapon)then
							{
								_maxAmmo = getNumber (configfile >> 'CfgMagazines' >> _magazine >> 'count');
								_camm = _unit ammo _muzzle;
								if(_camm >= _maxAmmo)then
								{
									_unit removeMagazine _magazine;
									if({currentMagazine player == _x} count (magazines player) isEqualTo 0)then
									{
										_unit removeMagazines _magazine;
										_unit removeItem _muzzle;
										_unit removeWeapon _muzzle;
									};
								};
							};
						};
					};
				};
			};
		};
	}else{
		deleteVehicle _projectile;
	};
	_this call ExileClient_object_player_event_onFired
};
publicVariable "fnc_infiSTAR_fired";
/****************************************************************************************************/
fnc_infiSTAR_handleDamage = {
	params[['_unit',objNull],['_selectionName',''],['_damage',0],['_source',objNull],['_projectile',''],['_hitPartIndex',-1],['_instigator',objNull]];
	if(ExilePlayerInSafezone)then
	{
		_damage = 0;
		_unit allowDamage false;
	}
	else
	{
		_unit allowDamage true;
		_amountOfDamage = _damage;
		_this call ExileClient_object_player_event_onHandleDamage;
		_damage = _amountOfDamage;
		if(!isNull _source)then
		{
			_distance = _unit distance _source;
			if(_distance > 4000)then
			{
				_damage = 0;
			}
			else
			{
				if(_distance > 3000)then
				{
					if(_damage > 0.5)then{_damage = _damage / 2;};
				};
			};
			if(!isNull _instigator)then
			{
				if!((vehicle _source) isEqualTo (vehicle _instigator))then
				{
					_damage = 0;
				};
			};
		};
	};
	diag_log _this;
	_damage
};
publicVariable "fnc_infiSTAR_handleDamage";
/****************************************************************************************************/
if(_stopSafeGlitchAndCorpseDupe)then{
fn_onInventoryOpened = compileFinal "
	_container = _this param [1, objNull, [objNull]];
	_secondaryContainer = _this param [2, objNull, [objNull]];
	if(
		(locked _container isEqualTo 2)||(_container getVariable ['ExileIsLocked', 1] isEqualTo -1)||
		(locked _secondaryContainer isEqualTo 2)||(_secondaryContainer getVariable ['ExileIsLocked', 1] isEqualTo -1)
	)then{
		if(!isNil'checkGearDisplayThread')then{terminate checkGearDisplayThread;checkGearDisplayThread=nil;};
		checkGearDisplayThread = [] spawn {
			disableSerialization;
			_fn_hide_cargo = {
				((findDisplay 602) displayCtrl 6401) ctrlEnable false;
				ctrlSetFocus ((findDisplay 602) displayCtrl 6321);
				ctrlActivate ((findDisplay 602) displayCtrl 6321);
			};
			waitUntil {call _fn_hide_cargo;!isNull findDisplay 602};
			waitUntil {call _fn_hide_cargo;isNull findDisplay 602};
		};
	};
	_this call ExileClient_object_player_event_onInventoryOpened
";
publicVariable "fn_onInventoryOpened";
}
else
{
fn_onInventoryOpened = compileFinal "_this call ExileClient_object_player_event_onInventoryOpened";
publicVariable "fn_onInventoryOpened";
};
/****************************************************************************************************/
fn_infiSTAR_revive = compileFinal "
_target = objectFromnetId _this;
if(isNull _target)exitWith{};

_targetID = owner _target;
if(_targetID < 3)exitWith{};

_playerUID = getPlayerUID _target;
if(_playerUID isEqualTo '')exitWith{
	[
		'<infiSTAR.de> REVIVE ERROR: Target already respawned..!',
		{systemChat _this},
		_clientID,
		false
	] call FN_infiSTAR_S;
};

_revive = _target getVariable ['revive',-1];
if!(_revive isEqualTo -1)exitWith{
	[
		format['<infiSTAR.de> REVIVE ERROR: Target %1 already getting revived %2 seconds ago..!',_target,time - _revive],
		{systemChat _this},
		_clientID,
		false
	] call FN_infiSTAR_S;
};
_target setVariable ['revive','1'];

_pos = _target modelToWorld [0,0,0];
_direction = getDir _target;
_name = _target call fnc_get_exileObjName;

_newUnit = (createGroup independent) createUnit ['Exile_Unit_Player', [0,0,0], [], 0, 'CAN_COLLIDE'];
removeHeadgear _newUnit;

_ExileScore = _target getVariable ['ExileScore',0];
_ExileKills = _target getVariable ['ExileKills',0];
_ExileDeaths = _target getVariable ['ExileDeaths',0];
_clanID = _target getVariable ['ExileClanID',-1];
_ExileLocker = _target getVariable ['ExileLocker',0];
_clanData = _target getVariable ['ExileClanData',[]];
_ExileIsBambi = _target getVariable ['ExileIsBambi',false];
_ExileSessionID = _target getVariable ['ExileSessionID', -1];

_newUnit disableAI 'FSM';
_newUnit disableAI 'MOVE';
_newUnit disableAI 'AUTOTARGET';
_newUnit disableAI 'TARGET';
_newUnit disableAI 'CHECKVISIBLE';
_newUnit setName _name;
_newUnit setVariable ['ExileMoney', 0, true]; 
_newUnit setVariable ['ExileScore', _ExileScore];
_newUnit setVariable ['ExileKills', _ExileKills];
_newUnit setVariable ['ExileDeaths', _ExileDeaths];
_newUnit setVariable ['ExileClanID', _clanID];
_newUnit setVariable ['ExileClanData', _clanData];
_newUnit setVariable ['ExileHunger', 100];
_newUnit setVariable ['ExileThirst', 100];
_newUnit setVariable ['ExileTemperature', 37];
_newUnit setVariable ['ExileWetness', 0];
_newUnit setVariable ['ExileAlcohol', 0]; 
_newUnit setVariable ['ExileName', _name]; 
_newUnit setVariable ['ExileOwnerUID', _playerUID]; 
_newUnit setVariable ['ExileIsBambi', _ExileIsBambi];
_newUnit setVariable ['ExileXM8IsOnline', false, true];
_newUnit setVariable ['ExileLocker', _ExileLocker, true];
_newUnit setVariable ['ExileSessionID', _ExileSessionID, true];
missionNamespace setVariable [format['ExileSessionPlayerObject%1', _ExileSessionID], _newUnit];
_newUnit addMPEventHandler ['MPKilled', {_this call ExileServer_object_player_event_onMpKilled}];
_newUnit call ExileServer_object_player_database_insert;

_weaponholder = nearestObject [_target, 'WeaponHolderSimulated'];
if(!isNull _weaponholder)then
{
	_weaponsItemsCargo = weaponsItemsCargo _weaponholder;
	if(count _weaponsItemsCargo > 0)then
	{
		_weaponsItemsCargo = _weaponsItemsCargo select 0;
		
		{
			if(_x isEqualType '')then
			{
				_target addweapon _x;
				_target addPrimaryWeaponItem _x;
			}
			else
			{
				_target addMagazine _x;
			};
		} forEach _weaponsItemsCargo;
	};
	deleteVehicle _weaponholder;
};

[
	[
		_newUnit,
		str _ExileScore,
		_ExileKills,
		_ExileDeaths,
		(getNumber (configFile >> 'CfgSettings' >> 'BambiSettings' >> 'protectionDuration')) * 60, 
		_clanData,
		_ExileIsBambi,
		_target,
		_newUnit,
		getUnitLoadout _target
	],
	{
		params ['_newUnit','_ExileScore','_ExileKills','_ExileDeaths','_bambitimer','_clanData','_ExileIsBambi','_target','_newUnit','_loadout'];
		_newUnit call ExileClient_object_player_initialize;
		ExileClientPlayerIsSpawned = true;
		ExileClientPlayerAttributesASecondAgo = 
		[
			ExileClientPlayerAttributes select 0,
			ExileClientPlayerAttributes select 1,
			ExileClientPlayerAttributes select 2,
			ExileClientPlayerAttributes select 3,
			ExileClientPlayerAttributes select 4,
			ExileClientPlayerAttributes select 5,
			ExileClientPlayerAttributes select 6
		];
		call ExileClient_object_player_initStamina;
		call ExileClient_system_rating_balance;
		false call ExileClient_gui_hud_showSurvivalInfo;
		ExileClientPlayerScore = parseNumber _ExileScore;
		ExileClientPlayerKills = _ExileKills;
		ExileClientPlayerDeaths = _ExileDeaths;

		_clanData call ExileClient_system_clan_network_updateClanInfoFull;
		if(count _clanData >= 6)then
		{
			if!(isNull (_clanData select 5))then
			{
				ExileClientPartyID = netid (_clanData select 5);
			};
		};
		if(isNil'ExileClientPartyID')then{ExileClientPartyID = -1;};
		if!(ExileClientPartyID isEqualTo -1)then
		{
			[player] joinSilent (groupFromNetId ExileClientPartyID);
		};

		if!(isNull ExileClientLastDiedPlayerObject)then
		{	
			[ExileClientLastDiedPlayerObject] joinSilent (createGroup independent);
		};
		if(_ExileIsBambi)then
		{
			[ExileClientEndBambiStateThread] call ExileClient_system_thread_removeTask;
			ExileClientPlayerBambiStateExpiresAt = time + _bambitimer; 
			true call ExileClient_gui_hud_toggleBambiIcon;
			ExileClientEndBambiStateThread = [_bambitimer, ExileClient_object_player_bambiStateEnd, [], true] call ExileClient_system_thread_addTask;
		};
		_layer = 'BIS_fnc_respawnCounter' call bis_fnc_rscLayer;
		_layer cutText ['', 'plain'];
		RscRespawnCounter_Custom = 0;
		if!(ExileClientBleedOutThread isEqualTo -1)then
		{
			[ExileClientBleedOutThread] call ExileClient_system_thread_removeTask;
			ExileClientBleedOutThread = -1;
		};
		cutText['', 'BLACK IN',3];
		titleText['', 'BLACK IN',3];
		true call ExileClient_gui_hud_toggle;
		ExileClientLoadedIn = true;
		showChat true;
		setGroupIconsVisible [true, true];
		if(userInputDisabled)then{disableUserInput false;};
		
		if(!isNull _target)then{ deleteVehicle _target; };
		if(!isNull _newUnit)then{
			if!(_loadout isEqualTo [])then
			{
				_newUnit setUnitLoadout _loadout;
			};
		};
	},
	_targetID,
	false
] call FN_infiSTAR_S;

_newUnit setPos _pos;
_newUnit setDir _direction;
_newUnit call ExileServer_object_player_database_update;
deleteVehicle _target;
";
/****************************************************************************************************/
if(_block_glitch_actions || _wall_glitch_object || _wall_glitch_vehicle)then{
	fnc_check_if_enemy_base = compileFinal "
		if(isNil'last_check_if_enemy_base')then{last_check_if_enemy_base=0;};
		if(isNil'last_ret_check_if_enemy_base')then{last_ret_check_if_enemy_base=true;};
		if(last_check_if_enemy_base < diag_tickTime)then
		{
			_ret = call {
				_flags = player nearObjects ['Exile_Construction_Flag_Static', 90];
				if(_flags isEqualTo [])exitWith{false};
				
				_grp = group player;
				_groupID = groupID _grp;
				
				_uids = [getPlayerUID player];
				if!(_groupID isEqualTo '')then
				{
					{
						_xuid = getPlayerUID _x;
						if!(_xuid isEqualTo '')then
						{
							_uids pushBackUnique _xuid;
						};
					} forEach (units _grp);
				};
				
				scopeName 'MAIN_FLAG';
				_val = true;
				{
					_flag = _x;
					_flagStolen = _flag getvariable ['ExileFlagStolen',-999];
					if(_flagStolen isEqualTo 1)exitWith{_val = false;breakTo 'MAIN_FLAG';};
					
					_radius = _flag getVariable['ExileTerritorySize', 15];
					if((player distance _flag) < _radius)then
					{
						_buildRights = _flag getVariable['ExileTerritoryBuildRights', []];
						{
							if(_x in _buildRights)exitWith
							{
								_val = false;breakTo 'MAIN_FLAG';
							};
						} forEach _uids;
					};
				} forEach _flags;
				_val
			};
			last_check_if_enemy_base = diag_tickTime + 10;
			last_ret_check_if_enemy_base = _ret;
			_ret
		}
		else
		{
			last_ret_check_if_enemy_base
		};
	";
	publicVariable "fnc_check_if_enemy_base";
};
/****************************************************************************************************/
_ryanzombies = !(getArray(configfile >> 'CfgPatches' >> 'Ryanzombies' >> 'units') isEqualTo []);
/****************************************************************************************************/
fnc_debugbox_new = {
#include "debug.sqf"
};
diag_log format["<infiSTAR.de> %1 - STARTUP - including AdminTools",time];
#include "EXILE_AT.sqf"
diag_log format["<infiSTAR.de> %1 - STARTUP - AdminTools included!",time];
diag_log format["<infiSTAR.de> %1 - STARTUP - including AntiHack",time];
#include "EXILE_AH.sqf"
diag_log format["<infiSTAR.de> %1 - STARTUP - AntiHack included!",time];
comment "Antihack & AdminTools - Christian Lorenzen - www.infiSTAR.de";
true
