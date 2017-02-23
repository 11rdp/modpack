#include "script_component.hpp"

params ["_shooter", "_target", "_maxDistance", "_soundReductions"];
_soundReductions params ["", "", "_muzzleBlastSoundReduction", "_environmentalSoundReduction"];

private _precision = 4;
private _distance = leader _target distance _shooter;

private _distanceEffect = (_distance / _maxDistance) * 2.5;
private _soundEffect = (_muzzleBlastSoundReduction + _environmentalSoundReduction) * 2;

SUB(_precision,(_distanceEffect + _soundEffect));
_precision
