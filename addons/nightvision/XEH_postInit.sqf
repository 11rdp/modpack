#include "script_component.hpp"

if (!hasInterface) exitWith {};

GVAR(ppEffectNVGVignette) = ppEffectCreate ["ColorCorrections",1500];
GVAR(ppEffectNVGVignette) ppEffectEnable true;
GVAR(ppEffectNVGVignette) ppEffectForceInNVG true;
GVAR(ppEffectNVGVignette) ppEffectAdjust [1,0,0,[0,0,0,0],[1,1,1,0],[0.33,0.33,0.33,0],[0.6,0.7,0,0,0,0.4,3.5]];
GVAR(ppEffectNVGVignette) ppEffectCommit 0;
