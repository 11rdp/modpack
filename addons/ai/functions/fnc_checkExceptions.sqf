#include "script_component.hpp"

params ["_exceptions", "_caller", ["_target", objNull]];
private _condition = "(alive _caller)";

{
    switch (_x) do {
        case ("notInVehicle"): {
            _condition = _condition + " && (vehicle _caller == _caller)";
        };
        case ("hasTarget"): {
            _condition = _condition + " && (_target != objNull)";
        };
        case ("farFromTarget"): {
            _condition = _condition + " && (_caller distance _target > RDP_ai_HearingDistance / 2)";
        };
    };
} count _exceptions;

call compile _condition
