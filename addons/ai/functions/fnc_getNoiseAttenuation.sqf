#include "script_component.hpp"

params ["_unit", "_weapon", "_muzzle", "_ammo"];
private _attenuation = 0;

// Atténuation par les caractéristiques de l'arme
private _weaponModifier = getNumber (configFile >> "CfgWeapons" >> _weapon >> _muzzle >> "RDP_noiseAttenuation");
ADD(_attenuation,_weaponModifier);

// Atténuation par les accessoires de l'arme
if (_weapon == _muzzle) then {
    private _accessoryModifier = getNumber (configFile >> "CfgWeapons" >> (_unit weaponAccessories _weapon) select 0 >> "RDP_noiseAttenuation");
    ADD(_attenuation,_accessoryModifier);
};

// Gestion des projectiles sub/supersoniques
private _bulletVelocity = getNumber (configFile >> "CfgAmmo" >> _ammo >> "typicalSpeed");
private _whistle = (getNumber (configFile >> "CfgAmmo" >> _ammo >> "whistleDist") > 0);
private _temperature = ((getPosASL _unit) select 2) call ace_weather_fnc_calculateTemperatureAtHeight;
private _speedOfSound = _temperature call ace_weather_fnc_calculateSpeedOfSound;
if (!_whistle && _bulletVelocity < _speedOfSound) then {
    ADD(_attenuation,0.4);
};
TRACE_4("",_bulletVelocity,_whistle,_temperature,_speedOfSound);

// Atténuation par les conditions atmosphériques
private _overcastModifier = overcast / 10;
private _rainModifier = rain / 10;
private _lightningModifier = (1.5 * lightnings) / 10;
ADD(_attenuation,_rainModifier);
ADD(_attenuation,_lightningModifier);

if (_attenuation > 1) then {
    _attenuation = 1;
};

_attenuation

// TODO: Ajouter le calibre utilisé dans le calcul.
