#include "script_component.hpp"

if (!hasInterface) exitWith {};

disableSerialization;

params ["", "_visionMode"];

// Si le joueur n'a pas de JVN, on coupe les effets :
if (currentVisionMode ACE_player != 1) exitWith {
    GVAR(ppEffectNVGVignette) ppEffectEnable false;
    GVAR(ppEffectColorCorrect) ppEffectEnable false;
    GVAR(ppEffectGrainElectronicNoise) ppEffectEnable false;
};

// Activation des effets :
GVAR(ppEffectNVGVignette) ppEffectEnable true;
GVAR(ppEffectColorCorrect) ppEffectEnable true;
GVAR(ppEffectGrainElectronicNoise) ppEffectEnable true;

if (_visionMode isEqualTo 1) then {
    _sound = selectRandom [
        QUOTE(PATHTO_R(sounds\nvg_1.ogg)),
        QUOTE(PATHTO_R(sounds\nvg_2.ogg))
    ];
    [QGVAR(sfx), [_sound, ACE_player, "head"]] call CBA_fnc_globalEvent;
    QGVAR(turnOnEffect) cutText ["", "BLACK IN", 2.5];
};
