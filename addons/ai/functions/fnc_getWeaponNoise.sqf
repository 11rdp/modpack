#include "script_component.hpp"

params ["_unit", "_weapon", "_muzzle"];

if (_weapon isEqualTo "Throw") exitWith {0};
if (_weapon != _muzzle) exitWith {0.75}; // TODO: Etre plus précis dans le calcul pour vérifier si on a bien affaire à un GL.

private _suppressor = (_unit weaponAccessories _weapon) select 0;
if (_suppressor != "") exitWith {0.25};
// TODO: Faire la différence suppresseur/cache-flamme.
// TODO: Ajouter le calibre utilisé dans le calcul.
// TODO: Ajouter les conditions météo dans le calcul.

1
