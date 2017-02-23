#include "script_component.hpp"

params ["_unit", "_weapon", "_muzzle", "_ammo"];

private _muzzleBlastSoundReduction = 0;
private _projectileSoundReduction = 0;
private _environmentalSoundReduction = _unit call FUNC(getEnvironmentalSoundReduction);

// Atténuation par les caractéristiques de l'arme
private _weaponModifier = getNumber (configFile >> "CfgWeapons" >> _weapon >> _muzzle >> "RDP_muzzleBlastSoundReduction");
ADD(_muzzleBlastSoundReduction,_weaponModifier);

// Atténuation par les accessoires de l'arme
if (_weapon == _muzzle) then {
    private _accessoryModifier = getNumber (configFile >> "CfgWeapons" >> (_unit weaponAccessories _weapon) select 0 >> "RDP_muzzleBlastSoundReduction");
    ADD(_muzzleBlastSoundReduction,_accessoryModifier);
};

// Gestion des projectiles sub/supersoniques
private _bulletVelocity = getNumber (configFile >> "CfgAmmo" >> _ammo >> "typicalSpeed");
private _whistle = (getNumber (configFile >> "CfgAmmo" >> _ammo >> "whistleDist") > 0);
private _temperature = ((getPosASL _unit) select 2) call ace_weather_fnc_calculateTemperatureAtHeight;
private _speedOfSound = _temperature call ace_weather_fnc_calculateSpeedOfSound;

if (_bulletVelocity < _speedOfSound) then {
    if (_whistle) then {
        ADD(_projectileSoundReduction,0.3);
    } else {
        ADD(_projectileSoundReduction,0.9);
    };
};

TRACE_4("",_bulletVelocity,_whistle,_temperature,_speedOfSound);

private _totalReduction = ((_projectileSoundReduction + _muzzleBlastSoundReduction) / 2) + _environmentalSoundReduction;

if (_totalReduction > 1) then {
    _totalReduction = 1;
};

[_totalReduction, _projectileSoundReduction, _muzzleBlastSoundReduction, _environmentalSoundReduction];
