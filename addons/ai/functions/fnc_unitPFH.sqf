#include "script_component.hpp"

params ["_args", "_pfID"];
_args params ["_unit"];

// Si l'unité est morte ou supprimée, on coupe le PFH
if (!alive _unit || isNull _unit) exitWith {
    TRACE_1("removing PFH",_pfID);
    [_pfID] call CBA_fnc_removePerFrameHandler;
};

private _sunlight = sunOrMoon;
//private _isLeader = (_unit == leader _unit);

if (GVAR(EnableNvgRemoval)) then {
    if ((_unit getVariable [QGVAR(NVGoggles), "NONE"]) != "NONE") then {
        [_unit,_sunlight] call FUNC(hideNVG);
    };
};

// Si l'unité est en combat, on vérifie son niveau de suppression et on
// effectue les actions adaptées, si nécessaire
if (behaviour _unit == "COMBAT") then {

    private _enemy = _unit findNearestEnemy _unit;
    private _suppression = getSuppression _unit;

    [QGVAR(useAbility), ["RDP_SuppressiveFire", _unit, _caller]] call CBA_fnc_serverEvent;

    if (_suppression > 0) then {
        // On envoie des fumigènes quand on se fait tirer dessus !
        [QGVAR(useAbility), ["RDP_ThrowSmokeShell", _unit, _enemy]] call CBA_fnc_serverEvent;
        _unit setUnitPos "Down";
    };

    if (_suppression == 0) then {
        if (unitPos _unit == "Down") then {
            _unit setUnitPos "Auto";
        };
    };

    if (_sunlight < 1) then {
        [QGVAR(useAbility), ["RDP_ThrowFlare", _unit, _enemy]] call CBA_fnc_serverEvent;
    };

};
