#include "script_component.hpp"

GVAR(splintSounds) = QPATHTOF(sounds\velcro.ogg);

[QGVAR(treatmentAdvanced_splintLocal), DFUNC(treatmentAdvanced_splintLocal)] call CBA_fnc_addEventHandler;
