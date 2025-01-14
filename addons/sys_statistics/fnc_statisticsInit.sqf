#include "\x\alive\addons\sys_statistics\script_component.hpp"
SCRIPT(statisticsInit);

/* ----------------------------------------------------------------------------
Function: ALIVE_fnc_statisticsInit
Description:
Creates the server side object to store settings

Parameters:
_this select 0: OBJECT - Reference to module

Returns:
Nil

See Also:
- <ALIVE_fnc_statistics>

Author:
Tupolov

Peer Reviewed:
nil
---------------------------------------------------------------------------- */

private ["_logic"];

PARAMS_1(_logic);

// Confirm init function available
ASSERT_DEFINED("ALIVE_fnc_data","Main function missing");

If (isnil "ALiVE_SYS_DATA" || {ALiVE_SYS_DATA_DISABLED}) exitwith {["SYS STATS REQUIRES SYS DATA! Exiting..."] call ALiVE_fnc_dump};

LOG(MSG_INIT);

ADDON = false;

TRACE_2("SYS_STATS",isDedicated,GVAR(ENABLED));

// Make sure we don't init stats more than once on client/dedi
if (!isNil QGVAR(statsInitialized)) exitWith {["SYS STATS - Stats already initialised! Exiting..."] call ALiVE_fnc_dump};

if (isDedicated && GVAR(ENABLED)) then {

    // Setup data handler
    GVAR(datahandler) = [nil, "create"] call ALIVE_fnc_Data;
    [GVAR(datahandler),"storeType",false] call ALIVE_fnc_Data;

    // Grab Server IP and data group info
    GVAR(serverIP) = [] call ALIVE_fnc_getServerIP;
    GVAR(serverName) = [] call ALIVE_fnc_getServerName;
    GVAR(groupTag) = [] call ALIVE_fnc_getGroupID;
    publicVariable QGVAR(groupTag);

    // If the host IP web service is down, just use the serverName
    if (GVAR(serverIP) == "ERROR") then {
        GVAR(serverIP) = GVAR(serverName);
    };

    // Setup Module Data Listener
    // Server side handler to write data to DB
    QGVAR(UPDATE_EVENTS) addPublicVariableEventHandler {

        private ["_data", "_post", "_gameTime", "_realTime","_hours","_minutes","_currenttime","_async","_missionTime"];
        if (GVAR(ENABLED)) then {
            _data = _this select 1;
            _module = "events";

            // Check data passed is an array
            ASSERT_TRUE(typeName _data == "ARRAY", _data);

            // Get server/date/time/operation/map specific information to prefix to event data

            // Get local time and format please.
            _currenttime = date;

            // Work out time in 4 digits
            if ((_currenttime select 4) < 10) then {
                _minutes = "0" + str(_currenttime select 4);
            } else {
                _minutes = str(_currenttime select 4);
                };
            if ((_currenttime select 3) < 10) then {
                _hours = "0" + str(_currenttime select 3);
            } else {
                _hours = str(_currenttime select 3);
            };

            _gametime = format["%1%2", _hours, _minutes];
            _realtime = [] call ALIVE_fnc_getServerTime;
            _missionTime = round time;

            // _data should be an array of key/value
            _data = [["realTime",_realtime],["Server",GVAR(serverIP)],["Group",GVAR(groupTag)],["Operation",GVAR(operation)],["Map",worldName],["gameTime",_gametime]] + _data + [["missionTime",_missionTime]];

            // Write event data to DB
            if ((_data select 6) select 1 == "OperationFinish") then {
                _async = false;
            } else {
                _async = true;
            };

            _result = [GVAR(datahandler), "write", [_module, _data, _async], "CouchDB" ] call ALIVE_fnc_Data;
            if (_result == "ERROR") then {
                ERROR("SYS STATISTICS FAILED TO WRITE TO DATABASE");
            };
            TRACE_2("UPDATE EVENTS",_data,_result);
            if (ALiVE_SYS_DATA_DEBUG_ON) then {
                ["STATS DATA RESULT: %1", _result] call ALiVE_fnc_dump;
            };
            _result;


        };
    };

    // Set Operation name
    GVAR(operation) = getText (missionConfigFile >> "OnLoadName");

    if (GVAR(operation) == "") then {
        //GVAR(operation) = GVAR(MISSIONNAME_UI);
        //if (GVAR(operation) == "") then {
            GVAR(operation) = missionName;
        //};
    };

    ["Operation: %1",GVAR(operation)] call ALiVE_fnc_dump;

    // Register Operation with DB and setup OPD
    private ["_data"];
    _data = [["Event","OperationStart"]];

    GVAR(UPDATE_EVENTS) = _data;
    publicVariableServer QGVAR(UPDATE_EVENTS);

    // Set server start
    GVAR(timeStarted) = diag_tickTime;

    // Create player start time hash
    GVAR(PlayerStartTime) = []call ALIVE_fnc_hashCreate;

    // ["TimeStarted: %1", GVAR(timeStarted)] call ALiVE_fnc_dump;

    // Create shotsFired hash on both server
    GVAR(shotsFired) = [] call ALIVE_fnc_hashCreate;

};

waitUntil {!isNil QGVAR(ENABLED)};

// Run only in MP on clients where player object-variable exists (and not on HC)
if (isMultiplayer && hasInterface && GVAR(ENABLED)) then {

    private ["_puid","_class","_PlayerSide","_PlayerFaction"];

    ["Initialising stats for %1", player] call ALiVE_fnc_dump;

    _waitTime = diag_tickTime + 100000;

    waitUntil {!isNull player || diag_tickTime > _waitTime};

    _puid = getplayeruid player;

    if (isNil "_puid" || _puid == "") exitWith {["Exiting stats due to nil PUID"] call ALiVE_fnc_dump;};

    // Set player shotsFired
    GVAR(playerShotsFired) = [[primaryweapon player, 0, primaryweapon player, getText (configFile >> "cfgWeapons" >> primaryweapon player >> "displayName")]];

    // Player eventhandlers

    // Set up eventhandler to grab player profile from website
    "STATS_PLAYER_PROFILE" addPublicVariableEventHandler {
        if (STATS_PLAYER_PROFILE_DONE) exitWith {}; // If i've loaded my player profile already exit
        private ["_data","_result"];

        TRACE_1("STATS PLAYER PROFILE",_this);

        // Read data from server PVEH
        _data = _this select 1;

        // Create player profile in diary record
        _result = [_data] call ALIVE_fnc_stats_createPlayerProfile;

        TRACE_1("STATS PLAYER PROFILE SUCCESS",_result);

        STATS_PLAYER_PROFILE_DONE = true;
    };

    // Addresses race condition at module start on client
    if (isNil QGVAR(groupTag)) then {
        private _waitTime = diag_tickTime + 100000;

        waitUntil {!isNil QGVAR(groupTag) || diag_tickTime > _waitTime};

        if (isNil QGVAR(groupTag)) then {GVAR(groupTag) = "Unknown";};
    };

    ["Adding Stats EHs to player %1", player] call ALiVE_fnc_dump;
    // Set up player fired
    player addEventHandler ["Fired", {_this call GVAR(fnc_playerfiredEH);}];

    // Set up handleDamage
    //    player addEventHandler ["handleDamage", {_this call GVAR(fnc_handleDamageEH);}];

    // Set up hit handler
    player addEventHandler ["hit", {_this call GVAR(fnc_hitEH);}];

    // Set up handleHeal - now handled on connection and broadcast to all connected machines
    //player addEventHandler ["handleHeal", {_this call GVAR(fnc_handleHealEH);}];

    // Set up non eventhandler checks
    // Combat Dive check using CBA per frame check
    [MOD(fnc_checkIsDiving), 30, [GVAR(ENABLED)]] call CBA_fnc_addPerFrameHandler;

    // Get player information and send player start event
    _name = name player;
    _class = getText (configFile >> "cfgVehicles" >> (typeof player) >> "displayName");
    _PlayerSide = side (group player); // group side is more reliable
    _PlayerFaction = faction player;


    // Setup the event data for player starting
    _data = [ ["Event","PlayerStart"] , ["PlayerSide",_PlayerSide] , ["PlayerFaction",_PlayerFaction], ["PlayerName",_name] ,["PlayerType",typeof player] , ["PlayerClass",_class] , ["PlayerRank", rank player], ["Player",_puid], ["GeoPos",position player], ["playerGroup", [player] call ALiVE_fnc_getPlayerGroup] ];
    GVAR(UPDATE_EVENTS) = _data;
    publicVariableServer QGVAR(UPDATE_EVENTS);

    ["STATISTICS INITIALISED for %1", player] call ALiVE_fnc_dump;
};


// Check for ACE and add eventhandler for ACE Medical deaths
// Add to all clients/servers in case AI is running locally on those machines
If (isClass (configFile >> "cfgMods" >> "ace") && GVAR(ENABLED)) then {
    ["Adding ACE Stats EHs to player %1", player] call ALiVE_fnc_dump;
    ["medical_onSetDead",
        {
            // ["ACE MEDICAL ON SETDEAD CALLED: %1", _this] call ALiVE_fnc_dump;
            [_this select 0, nil] call alive_sys_statistics_fnc_unitKilledEH;
        }
    ] call CBA_fnc_addEventHandler;
};

/*
VIEW - purely visual
- initialise menu
- frequent check to modify menu and display status
*/

TRACE_4("Adding menu",isDedicated,isHC,GVAR(ENABLED),GVAR(DISABLED));

if(!isDedicated && !isHC && GVAR(ENABLED)) then {
        // Initialise interaction key if undefined
        if(isNil "SELF_INTERACTION_KEY") then {SELF_INTERACTION_KEY = [221,[false,false,false]];};

        // if ACE spectator enabled, seto to allow exit
        if(!isNil "ace_fnc_startSpectator") then {ace_sys_spectator_can_exit_spectator = true;};

        // Initialise default map click command if undefined
        ISNILS(DEFAULT_MAPCLICK,"");

        TRACE_3("Menu pre-req",SELF_INTERACTION_KEY,ace_fnc_startSpectator,DEFAULT_MAPCLICK);

        // initialise main menu
        [
                "player",
                [((["ALiVE", "openMenu"] call cba_fnc_getKeybind) select 5) select 0],
                -9500,
                [
                        "call ALIVE_fnc_statisticsMenuDef",
                        ["main", "alive_flexiMenu_rscPopup"]
                ]
        ] call CBA_fnc_flexiMenu_Add;
};

GVAR(statsInitialized) = true;

ADDON = true;


