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