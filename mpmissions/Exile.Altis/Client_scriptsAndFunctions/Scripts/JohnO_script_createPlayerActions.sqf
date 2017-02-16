/*

    Sanity..
    Params for custom consume:

    ExileClientPlayerEffectNames = ["Health", "Stamina", "Hunger", "Thirst", "Blood Alcohol", "Temperature", "Wetness"];

    [[[2,50,200]],"Consumed animal meat",1,false] call JohnO_fnc_customConsume;

    select 0 - array - [Attribute - hunger, thirst, temp etc, Amount to change, Duration]
    select 1 - string - Message to display
    select 2 - number - Eating or drinking for sound - 1 is eating 2 is drinking 0 is no sound
    select 2 - Boolean - True for poison false for not poison   
    
*/

private ["_pickUpAction","_consumeAction","_hasPickUpAction","_playerhasCookingAction","_animalID","_deadAnimalID"];

ExileReborn_hasscavengeAction = false;
ExileReborn_hasSearchBerriesAction = false;
ExileReborn_has_applyPressureToSelf = false;
ExileReborn_hasDryClothesAction = false;

// Dry clothes

ExileReborn_scavengeAction =
["Scavenge",
{
    ExileReborn_client_completedScavengeTask = true;    

    ExileReborn_hasscavengeAction = true;

    _caller = _this select 0;
    _action = _this select 2;
    _caller removeAction _action;

    if !([] call JohnO_fnc_canScavenge) then
    {
        [
            "ErrorTitleAndText",
            ["Invalid Object", "You cannot scavenge this object, try another"]
        ] call ExileClient_gui_toaster_addTemplateToast;
    }
    else
    {
        player playActionNow "PutDown";
        sleep 2;

        if (random 1 > 0.95) then
        {
            player setDamage (damage player + random 0.3);
            [60] call BIS_fnc_bloodEffect;
        }; 

        if (random 1 > 0.5) then
        {
            _item = [] call JohnO_fnc_randomItem;
            _itemConfig = configFile >> "cfgMagazines" >> _item;
            _itemDisplayName = getText(_itemConfig >> "displayName");
            if ([player,_item] call ExileClient_util_playerCargo_canAdd) then
            {
                player addItem _item;
                ["InfoTitleAndText",
                    [
                        "Item found",
                        format ["I have found a %1 .. it is in my gear",_itemDisplayName]
                    ]
                ] call ExileClient_gui_toaster_addTemplateToast;
                if (random 1 > 0) then
                {
                    if ([] call JohnO_fnc_canScavenge) then
                    {
                        cursorObject setDamage 1;
                    };
                };
            }
            else
            {
                _dir = direction player + 180;
                _pos = getPos player;
                _dist = 0.7;

                _pos = (_pos getPos [_dist, _dir] select [0, 2]) + ([[],[_pos select 2]] select (count _pos > 2));

                _nearHolders = position player nearObjects ["GroundWeaponHolder", 2];

                if (count _nearHolders > 0) then
                {
                    _holder = _nearHolders select 0;
                    [_holder, _item] call ExileClient_util_containerCargo_add;
                }
                else
                {
                    _holder = createVehicle ["GroundWeaponHolder",[(_pos select 0),(_pos select 1),0],[], 0, "CAN_COLLIDE"];
                    [_holder, _item] call ExileClient_util_containerCargo_add;
                };

                ["InfoTitleAndText",
                    [
                        "Item found",
                        format ["I have found a %1, there was no room in my gear. I should check around me",_itemDisplayName]
                    ]
                ] call ExileClient_gui_toaster_addTemplateToast;
                if (random 1 > 0.5) then
                {
                    if ([] call JohnO_fnc_canScavenge) then
                    {
                        cursorObject setDamage 1;
                    };
                };
            };
        }
        else
        {
             [
                "ErrorTitleAndText",
                ["Nothing found", "I have found nothing.."]
            ] call ExileClient_gui_toaster_addTemplateToast;
            if (random 1 > 0.3) then
            {
                if ([] call JohnO_fnc_canScavenge) then
                {
                    cursorObject setDamage 1;
                };
            };
        };
    };

    ExileReborn_hasscavengeAction = false;
    ExileReborn_scavengAction_current = nil;

},"",0,false,true,"","[] call JohnO_fnc_canScavenge"];

ExileReborn_userActions pushBack 
[
    [
        ExileReborn_scavengeAction,
        "ExileReborn_hasscavengeAction",
        "ExileReborn_scavengAction_current",
        "[] call JohnO_fnc_canScavenge",
        true
    ]    
];

// Search for berries

ExileReborn_searchBerriesAction =
["Search bush for berries",
{

    ExileReborn_client_completedBerryTask = true;

    ExileReborn_hasSearchBerriesAction = true;

    _caller = _this select 0;
    _action = _this select 2;
    _caller removeAction _action;

    if !([] call JohnO_fnc_canSearchForBerries) then
    {
        [
            "ErrorTitleAndText",
            ["Invalid Object", "You cannot search this object"]
        ] call ExileClient_gui_toaster_addTemplateToast;
    }
    else
    {
        player playActionNow "PutDown";
        sleep 2;
        if (random 1 > 0.4) then
        {
            [[[2,15,60],[3,10,60]],"I have found and eaten some berries",1,true] call JohnO_fnc_customConsume;
        }
        else
        {
            [
                "ErrorTitleAndText",
                ["Nothing found", "I have found no berries.."]
            ] call ExileClient_gui_toaster_addTemplateToast;
        };

        if (([] call JohnO_fnc_canSearchForBerries) && (random 1 > 0.8)) then
        {
            cursorObject setDamage 1;
        };    
    };

    ExileReborn_hasSearchBerriesAction = false;
    ExileReborn_searchBerriesAction_current = nil;

},"",0,false,true,"","[] call JohnO_fnc_canSearchForBerries"];

ExileReborn_userActions pushBack 
[
    [
        ExileReborn_searchBerriesAction,
        "ExileReborn_hasSearchBerriesAction",
        "ExileReborn_searchBerriesAction_current",
        "[] call JohnO_fnc_canSearchForBerries",
        true
    ]    
];

ExileReborn_applyPressureToSelf =
["Apply pressure to wound",
{
    _caller = _this select 0;
    _action = _this select 2;
    _caller removeAction _action;

    _bleedingRemaining = getBleedingRemaining player;

    player playActionNow "Medic";
    sleep 4;
    player setBleedingRemaining (_bleedingRemaining - 10);

},"",0,false,true,"","isBleeding player"];

ExileReborn_userActions pushBack 
[
    [
        ExileReborn_applyPressureToSelf,
        "ExileReborn_has_applyPressureToSelf",
        "ExileReborn_applyPressureToSelf_current",
        "isBleeding player",
        true
    ]    
];

ExileReborn_dryClothesAction =
["Wring out clothes",
{
    ExileReborn_hasDryClothesAction = true;

    _caller = _this select 0;
    _action = _this select 2;
    _caller removeAction _action;

    if (ExileClientActionDelayShown) exitWith { false };
    ExileClientActionDelayShown = true;
    ExileClientActionDelayAbort = false;

    _wetness = ExileClientPlayerAttributes select 6;

    disableSerialization;
    ("ExileActionProgressLayer" call BIS_fnc_rscLayer) cutRsc ["RscExileActionProgress", "PLAIN", 1, false];

    _keyDownHandle = (findDisplay 46) displayAddEventHandler ["KeyDown","_this call ExileClient_action_event_onKeyDown"];
    _mouseButtonDownHandle = (findDisplay 46) displayAddEventHandler ["MouseButtonDown","_this call ExileClient_action_event_onMouseButtonDown"];

    _startTime = diag_tickTime;
    _duration = 35;
    _sleepDuration = _duration / 100;
    _progress = 0;

    _display = uiNamespace getVariable "RscExileActionProgress";
    _label = _display displayCtrl 4002;
    _label ctrlSetText "0%";
    _progressBarBackground = _display displayCtrl 4001;
    _progressBarMaxSize = ctrlPosition _progressBarBackground;
    _progressBar = _display displayCtrl 4000;
    _progressBar ctrlSetPosition [_progressBarMaxSize select 0, _progressBarMaxSize select 1, 0, _progressBarMaxSize select 3];
    _progressBar ctrlSetBackgroundColor [0, 0.78, 0.93, 1];
    _progressBar ctrlCommit 0;
    _progressBar ctrlSetPosition _progressBarMaxSize;
    _progressBar ctrlCommit _duration;
    try
    {
        while {_progress < 1} do
        {
            if (ExileClientActionDelayAbort) then
            {
                throw 1;
            };
            player playActionNow "Medic";
            uiSleep _sleepDuration;
            _progress = ((diag_tickTime - _startTime) / _duration) min 1;
            _label ctrlSetText format["%1%2", round (_progress * 100), "%"];
        };
        throw 0;
    }
    catch
    {
        _progressBarColor = [];
        switch (_exception) do
        {
            case 0:
            {
                _progressBarColor = [0.7, 0.93, 0, 1];
               ExileClientPlayerAttributes set [6, 0];
               [
                    "InfoTitleAndText",
                    ["Drying clothes", "You are now dry"]
                ] call ExileClient_gui_toaster_addTemplateToast;
            };
            case 1:
            {
                [
                    "InfoTitleAndText",
                    ["Drying clothes", "Do not move while drying clothes"]
                ] call ExileClient_gui_toaster_addTemplateToast;
                _progressBarColor = [0.82, 0.82, 0.82, 1];
            };
        };
        player switchMove "";
        ["switchMoveRequest", [netId player, ""]] call ExileClient_system_network_send;
        _progressBar ctrlSetBackgroundColor _progressBarColor;
        _progressBar ctrlSetPosition _progressBarMaxSize;
        _progressBar ctrlCommit 0;
    };

    ("ExileActionProgressLayer" call BIS_fnc_rscLayer) cutFadeOut 2;
    (findDisplay 46) displayRemoveEventHandler ["KeyDown", _keyDownHandle];
    (findDisplay 46) displayRemoveEventHandler ["MouseButtonDown", _mouseButtonDownHandle];
    ExileClientActionDelayShown = false;
    ExileClientActionDelayAbort = false;
    ExileReborn_hasDryClothesAction = false;
    ExileReborn_dryClothesAction_current = nil;

},"",0,false,true,"",""];

ExileReborn_userActions pushBack 
[
    [
        ExileReborn_dryClothesAction,
        "ExileReborn_hasDryClothesAction",
        "ExileReborn_dryClothesAction_current",
        "((ExileClientPlayerAttributes select 6 > 0) && !(ExileReborn_hasDryClothesAction) && ((vehicle player) isEqualTo player))",
        false
    ]    
];