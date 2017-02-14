#include "script_component.hpp"

params ["_unit", "_weapon", "_muzzle", "", "_ammo"];

TRACE_7("firedEH",_unit,_weapon,_muzzle,_mode,_ammo,_magazine,_projectile);

private _noiseAttenuation = [_unit, _weapon, _muzzle, _ammo] call FUNC(getNoiseAttenuation);

// Si l'atténuation du son atteint 1 (100%), pas la peine d'alerter les IA
if (_noiseAttenuation < 1) then {
    private _enemySides = _unit call BIS_fnc_enemySides;
    private _nearEnemyGroups = [];
    private _distance = GVAR(HEARING_DISTANCE) - (GVAR(HEARING_DISTANCE) * _noiseAttenuation);

    private _nearEntities = (getPos _unit) nearEntities [GVAR(AFFECTED_CLASSES), _distance];
    {
        if (side _x in _enemySides) then {
            _nearEnemyGroups pushBackUnique group _x;
        };
    } forEach _nearEntities;

    private _visibility = [_unit] call FUNC(getVisibility);
    {
        ["detected", [_unit, _x, _visibility]] call CBA_fnc_serverEvent;
    } forEach _nearEnemyGroups;

    TRACE_4("",_noiseAttenuation,_visibility,_distance,_nearEnemyGroups);
}
