#include "script_component.hpp"

if !(isServer) exitWith {false};

params ["_logic", "_settingName", "_moduleVariable"];

if (isNil {_logic getVariable _moduleVariable}) exitWith {false};

private _value = _logic getVariable _moduleVariable;
[_settingName, _value, true] call FUNC(setSetting);
