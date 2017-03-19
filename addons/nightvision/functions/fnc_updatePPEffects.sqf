#include "script_component.hpp"

if (!hasInterface) exitWith {};

disableSerialization;

params [["_display", displayNull]];

if !(_display isEqualType displayNull) then {
    _display = displayNull;
};

// If the Zeus display is on or the player has no nightvision
if (ctrlIDD _display == 312 || currentVisionMode ACE_player != 1) exitWith {
    GVAR(ppEffectNVGVignette) ppEffectEnable false;
    GVAR(ppEffectColorCorrect) ppEffectEnable false;
    GVAR(ppEffectGrainElectronicNoise) ppEffectEnable false;
};

// Enable the effects
GVAR(ppEffectNVGVignette) ppEffectEnable true;
GVAR(ppEffectColorCorrect) ppEffectEnable true;
GVAR(ppEffectGrainElectronicNoise) ppEffectEnable true;
