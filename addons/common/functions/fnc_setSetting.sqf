#include "script_component.hpp"

params ["_name", "_value", ["_broadcastChanges", false]];
TRACE_3("setting read",_name,_value,_broadcastChanges);

missionNamespace setVariable [_name, _value];

if (_broadcastChanges) then {
    publicVariable _name;
};
