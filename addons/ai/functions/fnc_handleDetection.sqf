#include "script_component.hpp"

params ["_caller", "_group", "_precision"];
if (!local _group) exitWith {false};

private _leader = leader _group;

if (behaviour _leader != "CARELESS") then {
    TRACE_1("unit revealed to ai",_precision);

    _group setCombatMode "RED";

    if (_group knowsAbout _caller < _precision) then {
        _group reveal [_caller, _precision];
    };
};
