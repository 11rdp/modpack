class CfgWeapons {
    class ACE_ItemCore;
    class CBA_MiscItem_ItemInfo;
    
    class RDP_Splint: ACE_ItemCore {
        scope = 2;
        displayName = CSTRING(Splint_DisplayName);
        picture = QPATHTOF(ui\items\splint_x_ca.paa);
        model = "\z\ace\addons\medical\data\tourniquet.p3d";
        descriptionShort = CSTRING(Splint_Desc_Short);
        descriptionUse = CSTRING(Splint_Desc_Use);
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 1;
        };
    };
};
