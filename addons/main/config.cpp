#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            // ACE 3
            "ace_common",
            "ace_medical",
            // CBA
            "cba_ui",
            "cba_xeh",
            "cba_jr"
        };
        author = CSTRING(11RDP);
        authors[] = {"Yanek"};
        authorUrl = CSTRING(URL);
        VERSION_CONFIG;
    };
};
