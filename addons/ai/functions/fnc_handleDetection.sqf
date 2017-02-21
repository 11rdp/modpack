#include "script_component.hpp"

params ["_caller", "_group", "_visibility"];
if (!local _group) exitWith {false};

private _leader = leader _group;

if (behaviour _leader != "CARELESS") then {
    _revealValue = 4 * _visibility;
    TRACE_1("unit revealed to ai",_revealValue);
    
    _group setCombatMode "RED";

    if (_group knowsAbout _caller < _revealValue) then {
        _group reveal [_caller, _revealValue];
    };

    //[QGVAR(useAbility), ["RDP_ChaseEnemy", _leader, _caller]] call CBA_fnc_serverEvent;
};
