#include "script_component.hpp"

params ["_unit"];

// On enregistre les NVG de l'unité, pour plus tard :
if (GETVAR(_unit,GVAR(NVGoggles),"") isEqualTo "") then {
    {
        if (getText (configFile >> "CfgWeapons" >> _x >> "simulation") == "NVGoggles") exitWith {
            SETVAR(_unit,GVAR(NVGoggles),_x);
        };
        SETVAR(_unit,GVAR(NVGoggles),"NONE");
    } forEach assignedItems _unit;
};

if (GVAR(EnableNvgRemoval)) then {
    [_unit] call FUNC(hideNVG);
};
