#include "script_component.hpp"

if (!hasInterface) exitWith {};

disableSerialization;

params [["_display", displayNull]];

if !(_display isEqualType displayNull) then {
    _display = displayNull;
};

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
