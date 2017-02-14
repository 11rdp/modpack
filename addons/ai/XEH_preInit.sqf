#include "script_component.hpp"

ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

GVAR(AFFECTED_CLASSES) = ["Land", "Helicopter", "Ship"];
GVAR(HEARING_DISTANCE) = 600;
GVAR(SAFETY_DELAY) = 5;

ADDON = true;
