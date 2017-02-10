#include "script_component.hpp"

params ["_caller", "_target", "_selectionName", "_className", ["_sound", ""]];

[_player, _target, _selectionName, _className] call ace_medical_fnc_treatment;
if (_sound != "") then {
    [_sound, _target, _selectionName] call FUNC(soundFX);
};
