#include "script_component.hpp"

["detected", {_this call FUNC(handleDetection)}] call CBA_fnc_addEventHandler;

GVAR(lastTick) = diag_tickTime;
