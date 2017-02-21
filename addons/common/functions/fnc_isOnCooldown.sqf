#include "script_component.hpp"

#define DEBUG_MODE_FULL

params ["_timeToCheck", "_cooldownDuration"];

_isOnCooldown = if (diag_tickTime < (_timeTocheck + _cooldownDuration)) then {true} else {false};
TRACE_1("cooldown check",_isOnCooldown);
_isOnCooldown
