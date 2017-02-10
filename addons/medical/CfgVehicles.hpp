class CfgVehicles {
    class Man;
    class CAManBase: Man {
        class ACE_SelfActions {
            #include "ACE_Medical_SelfActions.hpp"
        };
        class ACE_Actions {
            #include "ACE_Medical_Actions.hpp"
        };
    };

    class NATO_Box_Base;
    class ACE_medicalSupplyCrate: NATO_Box_Base {
        class TransportItems;
    };
    class ACE_medicalSupplyCrate_advanced: ACE_medicalSupplyCrate {
        class TransportItems: TransportItems {
            MACRO_ADDITEM(RDP_Splint,15);
        };
    };
};
