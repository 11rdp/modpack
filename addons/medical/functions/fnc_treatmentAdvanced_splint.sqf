#include "script_component.hpp"

params ["_caller", "_target"];
private _callerName = [_caller, false, true] call ace_common_fnc_getName;

[_target, "activity", LSTRING(Activity_Splint), [_callerName]] call ace_medical_fnc_addToLog;
[_target, "activity_view", LSTRING(Activity_Splint), [_callerName]] call ace_medical_fnc_addToLog;

if (local _target) then {
    [QGVAR(treatmentAdvanced_splintLocal), _this] call CBA_fnc_localEvent;
} else {
    [QGVAR(treatmentAdvanced_splintLocal), _this, _target] call CBA_fnc_targetEvent;
};

true;
