#include "script_component.hpp"

GVAR(lastTick) = diag_tickTime;
GVAR(registeredSunlight) = sunOrMoon;

["ace_firedPlayer", {
    if (diag_tickTime > GVAR(lastTick) + GVAR(SAFETY_DELAY)) then {
        _this call FUNC(handleFired);
        GVAR(lastTick) = diag_tickTime;
        publicVariable QGVAR(lastTick);
    };
}] call CBA_fnc_addEventHandler;

["detected", DFUNC(handleDetection)] call CBA_fnc_addEventHandler;

if (isServer) then {
    [{
        if (GVAR(registeredSunlight) != sunOrMoon) then {
            {_x call FUNC(hideNVG)} forEach allUnits;
            GVAR(registeredSunlight) = sunOrMoon;
            publicVariable QGVAR(registeredSunlight);
        }
    }, 10, []] call CBA_fnc_addPerFrameHandler;
};
