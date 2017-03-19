#include "script_component.hpp"

if (!hasInterface) exitWith {};

GVAR(ppEffectNVGVignette) = ppEffectCreate ["ColorCorrections",2121];
GVAR(ppEffectNVGVignette) ppEffectForceInNVG true;
GVAR(ppEffectNVGVignette) ppEffectAdjust [1,0,0,[0,0,0,0],[1,1,1,0],[0.33,0.33,0.33,0],[0.7,0.65,0,0,0,0.4,3.5]];
GVAR(ppEffectNVGVignette) ppEffectCommit 0;

GVAR(ppEffectColorCorrect) = ppEffectCreate ["ColorCorrections", 2122];
GVAR(ppEffectColorCorrect) ppEffectForceInNVG true;
GVAR(ppEffectColorCorrect) ppEffectAdjust [0.75, 0.85, 0, [0.0, 0.0, 0.0, 0.0], [1.3, 1.25, 0.0, 0.9], [6, 1, 1, 0.0]];
GVAR(ppEffectColorCorrect) ppEffectCommit 0;

GVAR(ppEffectGrainElectronicNoise) = ppEffectCreate ["FilmGrain", 2123];
GVAR(ppEffectGrainElectronicNoise) ppEffectAdjust [0.3, 1, 1, 0.3, 0.3];
GVAR(ppEffectGrainElectronicNoise) ppEffectCommit 0;
GVAR(ppEffectGrainElectronicNoise) ppEffectForceInNVG true;

["loadout", FUNC(updatePPEffects)] call CBA_fnc_addPlayerEventHandler;
["visionMode", FUNC(updatePPEffects)] call CBA_fnc_addPlayerEventHandler;
["cameraView", FUNC(updatePPEffects)] call CBA_fnc_addPlayerEventHandler;
["vehicle", FUNC(updatePPEffects)] call CBA_fnc_addPlayerEventHandler;
["turret", FUNC(updatePPEffects)] call CBA_fnc_addPlayerEventHandler;
