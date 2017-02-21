#include "script_component.hpp"

GVAR(lastValidShot) = CBA_missionTime;
GVAR(registeredSunlight) = sunOrMoon;

["ace_firedPlayer", DFUNC(handleFired)] call CBA_fnc_addEventHandler;
["ace_firedPlayerVehicle", DFUNC(handleFired)] call CBA_fnc_addEventHandler;

[QGVAR(detected), DFUNC(handleDetection)] call CBA_fnc_addEventHandler;
[QGVAR(useAbility), DFUNC(ability)] call CBA_fnc_addEventHandler;
