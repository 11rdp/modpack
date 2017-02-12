#include "script_component.hpp"

GVAR(splintSounds) = QUOTE(PATHTO_R(sounds\velcro.ogg));

[QGVAR(treatmentAdvanced_splintLocal), DFUNC(treatmentAdvanced_splintLocal)] call CBA_fnc_addEventHandler;
