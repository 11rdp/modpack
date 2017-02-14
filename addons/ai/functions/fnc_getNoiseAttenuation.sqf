#include "script_component.hpp"

params ["_unit", "_weapon", "_muzzle", "_ammo"];

private _weaponAttenuation = getNumber (configFile >> "CfgWeapons" >> _weapon >> _muzzle >> "RDP_noiseAttenuation");
private _muzzleAttenuation = 0;
if (_weapon == _muzzle) then {
    _muzzleAttenuation = getNumber (configFile >> "CfgWeapons" >> (_unit weaponAccessories _weapon) select 0 >> "RDP_noiseAttenuation");
};

private _attenuation = _weaponAttenuation + _muzzleAttenuation;
if (_attenuation > 1) then {
    _attenuation = 1;
};

_attenuation

// TODO: Ajouter le calibre utilisé dans le calcul.
// TODO: Ajouter les conditions météo dans le calcul.
