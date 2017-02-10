#include "script_component.hpp"

params ["_caller", "_target"];
private _status = _target getVariable ["ACE_medical_bodyPartStatus", [0,0,0,0,0,0]];

// Si les damages généraux sont au dessus du seuil demandé, on les remet à
// la bonne valeur.
if (damage _target > GVAR(DAMAGE_THRESHOLD)) then {
    _target setDamage GVAR(DAMAGE_THRESHOLD);
};

// Même procédé qu'au dessus, pour les blessures localisées aux bras.
if (_target getHitPointDamage "hitHands" > GVAR(DAMAGE_THRESHOLD)) then {
    _target setHitPointDamage ["hitHands", GVAR(DAMAGE_THRESHOLD)];
    if (_status select 2 > GVAR(DAMAGE_THRESHOLD)) then {_status set [2, GVAR(DAMAGE_THRESHOLD)]};
    if (_status select 3 > GVAR(DAMAGE_THRESHOLD)) then {_status set [3, GVAR(DAMAGE_THRESHOLD)]};
};

// Même procédé qu'au dessus, pour les blessures localisées aux jambes.
if (_target getHitPointDamage "hitLegs" > GVAR(DAMAGE_THRESHOLD)) then {
    _target setHitPointDamage ["hitLegs", GVAR(DAMAGE_THRESHOLD)];
    if (_status select 4 > GVAR(DAMAGE_THRESHOLD)) then {_status set [4, GVAR(DAMAGE_THRESHOLD)]};
    if (_status select 5 > GVAR(DAMAGE_THRESHOLD)) then {_status set [5, GVAR(DAMAGE_THRESHOLD)]};
};

_target setVariable ["ACE_medical_bodyPartStatus", _status, true];
