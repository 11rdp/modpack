#include "script_component.hpp"

GVAR(lastTick) = diag_tickTime;
GVAR(registeredSunlight) = sunOrMoon;

["detected", {_this call FUNC(handleDetection)}] call CBA_fnc_addEventHandler;

if (isServer) then {
    [{
        if (GVAR(registeredSunlight) != sunOrMoon) then {
            {_x call FUNC(hideNVG)} forEach allUnits;
            GVAR(registeredSunlight) = sunOrMoon;
            publicVariable QGVAR(registeredSunlight);
        }
    }, 10, []] call CBA_fnc_addPerFrameHandler;
};
