#include "script_component.hpp"

if (!isServer) exitWith {};
params ["_caller", "_group", "_visibility"];
if (!local _group) exitWith {};

if (behaviour leader _group != "CARELESS") then {
    _revealValue = 4 * _visibility;
    TRACE_1("",_revealValue);
    _group setBehaviour "COMBAT";
    if (_group knowsAbout _caller < _revealValue) then {
        _group reveal [_caller, _revealValue];
    };
};
