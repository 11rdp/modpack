#include "script_component.hpp"

params ["_unit", "_target"];

if (_unit canAdd "SmokeShell") then {
        _unit addMagazine "SmokeShell";
        _unit doWatch _target;
        _unit forceWeaponFire ["SmokeShellMuzzle", "SmokeShellMuzzle"];
        _unit doWatch objNull;
        [{
            (_this select 0) removeMagazine "SmokeShell";
        }, [_unit], 10] call CBA_fnc_waitAndExecute;
};
