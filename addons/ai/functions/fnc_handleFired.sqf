#include "script_component.hpp"

params ["_unit", "_weapon", "_muzzle", "", "_ammo"];

if !(local _unit) exitWith {false};
if (CBA_missionTime < GVAR(lastValidShot) + 5) exitWith {false};

TRACE_7("firedEH",_unit,_weapon,_muzzle,_mode,_ammo,_magazine,_projectile);

private _noiseAttenuation = [_unit, _weapon, _muzzle, _ammo] call FUNC(getNoiseAttenuation);

// Si l'atténuation du son atteint 1 (100%), pas la peine d'alerter les IA
if (_noiseAttenuation < 1) then {
    private _enemySides = _unit call BIS_fnc_enemySides;
    private _nearEnemyGroups = [];
    private _distance = GVAR(HearingDistance) - (GVAR(HearingDistance) * _noiseAttenuation);

    private _nearEntities = (getPos _unit) nearEntities [["Land", "Ship"], _distance];
    {
        if (side _x in _enemySides) then {
            _nearEnemyGroups pushBackUnique group _x;
        };
    } forEach _nearEntities;

    if !(_nearEnemyGroups isEqualTo []) then {
        private _visibility = [_unit] call FUNC(getVisibility);
        {
            [QGVAR(detected), [_unit, _x, _visibility]] call CBA_fnc_serverEvent;
        } count _nearEnemyGroups;

        GVAR(lastValidShot) = CBA_missionTime;
        publicVariable QGVAR(lastValidShot);
    };

    #ifdef DEBUG_MODE_FULL
        [format ["Sound propagation: %1 / %2m",_noiseAttenuation,_distance]] call ace_common_fnc_displayTextStructured;
        TRACE_4("shot fired",_noiseAttenuation,_visibility,_distance,_nearEnemyGroups);
    #endif
};
