#include "script_component.hpp"

params ["_unit"];

if (!local _unit || isPlayer _unit) exitWith {false};

// Enregistrement des NVG de l'unité, pour plus tard :
private _nvg = _unit getVariable [QGVAR(NVGoggles), ""];
if (_nvg == "") then {
    {
        if (getText (configFile >> "CfgWeapons" >> _x >> "simulation") == "NVGoggles") exitWith {
            _unit setVariable [QGVAR(NVGoggles), _x];
        };
        _unit setVariable [QGVAR(NVGoggles), "NONE"];
    } forEach assignedItems _unit;
};

_unit setSkill ["courage", 0];

// Création d'un PFH pour gérer les situations de combat des unités IA
// TODO: Se renseigner et envisager le FSM
[FUNC(unitPFH), 1, _this] call CBA_fnc_addPerFrameHandler;
