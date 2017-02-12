#include "script_component.hpp"

params ["_unit", "_weapon", "_muzzle"];

if (!hasInterface) exitWith {};
if (_unit != ACE_player) exitWith {};
if (diag_tickTime < GVAR(lastTick) + GVAR(SAFETY_DELAY)) exitWith {};

TRACE_3("shot registered",_unit,_weapon,_muzzle);

private _noiseCoeff = [_unit, _weapon, _muzzle] call FUNC(getWeaponNoise);
if (_noiseCoeff > 0) then {
    // On détermine les factions qui correspondent aux ennemis.
    private _enemySides = _unit call BIS_fnc_enemySides;
    private _nearEnemyGroups = [];
    private _distance = (GVAR(HEARING_DISTANCE) - random 100) * _noiseCoeff;

    private _nearEntities = (getPos _unit) nearEntities [GVAR(AFFECTED_CLASSES), _distance];
    {
        if (side _x in _enemySides) then {
            _nearEnemyGroups pushBackUnique group _x;
        };
    } forEach _nearEntities;
    TRACE_2("enemy groups",_distance,_nearEnemyGroups);

    GVAR(lastTick) = diag_tickTime;
    publicVariable QGVAR(lastTick);

    private _visibility = [_unit] call FUNC(getVisibility);
    {
        ["detected", [_unit, _x, _visibility]] call CBA_fnc_serverEvent;
    } forEach _nearEnemyGroups;
}
