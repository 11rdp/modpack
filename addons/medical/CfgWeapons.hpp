class CfgWeapons {
    class ACE_ItemCore;
    class InventoryItem_Base_F;
    
    class RDP_Splint: ACE_ItemCore {
        scope = 2;
        displayName = CSTRING(Splint_DisplayName);
        picture = QPATHTOF(ui\items\splint_x_ca.paa);
        model = "\z\ace\addons\medical\data\tourniquet.p3d";
        descriptionShort = CSTRING(Splint_Desc_Short);
        descriptionUse = CSTRING(Splint_Desc_Use);
        class ItemInfo: InventoryItem_Base_F {
            mass = 1;
        };
    };

    class RDP_Painkillers: ACE_ItemCore {
        scope = 2;
        displayName = CSTRING(Painkillers_DisplayName);
        picture = QPATHTOF(ui\items\painkillers_x_ca.paa);
        model = "\A3\weapons_F\ammo\mag_univ.p3d";
        descriptionShort = CSTRING(Painkillers_Desc_Short);
        descriptionUse = CSTRING(Painkiller_Desc_Use);
        class ItemInfo: InventoryItem_Base_F {
            mass = 0.05;
        };
    };
};
