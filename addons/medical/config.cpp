#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {"RDP_Splint"};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"rdp_main"};
        author = ECSTRING(main,11RDP);
        authors[] = {"Yanek"};
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgWeapons.hpp"
#include "CfgVehicles.hpp"
#include "ACE_Medical_Treatments.hpp"
