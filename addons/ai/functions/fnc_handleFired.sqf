#include "script_component.hpp"

params ["_unit", "_weapon", "_muzzle", "", "_ammo"];

if !(local _unit) exitWith {false};
if (CBA_missionTime < GVAR(lastValidShot) + 5) exitWith {false};

TRACE_7("firedEH",_unit,_weapon,_muzzle,_mode,_ammo,_magazine,_projectile);

private _soundReductionsArray = [_unit, _weapon, _muzzle, _ammo] call FUNC(getWeaponSoundReduction);
private _soundReduction = _soundReductionsArray select 0;

// Si l'atténuation du son atteint 1 (100%), pas la peine d'alerter les IA
if (_soundReduction < 1) then {
    private _enemySides = _unit call BIS_fnc_enemySides;
    private _nearEnemyGroups = [];
    private _distance = GVAR(HearingDistance) - (GVAR(HearingDistance) * _soundReduction);

    private _nearEntities = (getPos _unit) nearEntities [["Land", "Ship"], _distance];
    {
        if (side _x in _enemySides) then {
            _nearEnemyGroups pushBackUnique group _x;
        };
    } forEach _nearEntities;

    if !(_nearEnemyGroups isEqualTo []) then {
        {
            private _soundTravelTime = [_unit, leader _x] call EFUNC(common,calculateSoundTravelTime);
            [{
                params ["_unit","_target","_distance","_soundReductionsArray"];
                private _precision = [_unit,_target,_distance,_soundReductionsArray] call FUNC(getDetectionPrecision);
                [QGVAR(detected), [_unit,_target,_precision]] call CBA_fnc_serverEvent;
            }, [_unit,_x,_distance,_soundReductionsArray], _soundTravelTime] call CBA_fnc_waitAndExecute;
        } count _nearEnemyGroups;

        GVAR(lastValidShot) = CBA_missionTime;
        publicVariable QGVAR(lastValidShot);
    };

    #ifdef DEBUG_MODE_FULL
        [format ["Sound propagation: %1 / %2m",_soundReduction,_distance]] call ace_common_fnc_displayTextStructured;
        TRACE_4("shot fired",_soundReduction,_visibility,_distance,_nearEnemyGroups);
    #endif
};
