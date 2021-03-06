#include "\z\rdp\addons\common\script_component.hpp"
#undef COMPONENT
#define COMPONENT common_sub

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"rdp_common"};
        author = ECSTRING(main,11RDP);
        authors[] = {"Yanek"};
        VERSION_CONFIG;
    };
};

class CfgWeapons {
    class UGL_F;
    class Rifle_Base_F;
    class arifle_MX_Base_F: Rifle_Base_F {
        class GL_3GL_F: UGL_F {
            magazines[] += {"RDP_FakeGrenadeShell"};
        };
    };
};
