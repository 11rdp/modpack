class CfgMagazines {
    class CA_Magazine;
    class UGL_FlareWhite_F: CA_Magazine {
        displayName = CSTRING(FlareWhite_Name);
        displayNameShort = CSTRING(FlareWhite_NameShort);
    };
    class UGL_FlareGreen_F: UGL_FlareWhite_F {
        displayName = CSTRING(FlareGreen_Name);
        displayNameShort = CSTRING(FlareGreen_NameShort);
    };
    class UGL_FlareRed_F: UGL_FlareWhite_F {
        displayName = CSTRING(FlareRed_Name);
        displayNameShort = CSTRING(FlareRed_NameShort);
    };
    class UGL_FlareCIR_F: UGL_FlareWhite_F {
        displayName = CSTRING(FlareCIR_Name);
        displayNameShort = CSTRING(FlareCIR_NameShort);
    };
    class UGL_FlareYellow_F: UGL_FlareWhite_F {
        scope = 1;
    };
    class RDP_FlareCluster_Shell: UGL_FlareWhite_F {
        author = ECSTRING(main,11RDP);
        displayName = CSTRING(FlareCluster_Name);
        displayNameShort = CSTRING(FlareCluster_NameShort);
        ammo = "RDP_40mm_FlareCluster";
        descriptionShort = "";
        mass = 3;
    };

    class 3Rnd_UGL_FlareWhite_F: UGL_FlareWhite_F {
        displayName = CSTRING(3rFlareWhite_Name);
    };
    class 3Rnd_UGL_FlareGreen_F: UGL_FlareGreen_F {
        displayName = CSTRING(3rFlareGreen_Name);
    };
    class 3Rnd_UGL_FlareRed_F: UGL_FlareRed_F {
        displayName = CSTRING(3rFlareRed_Name);
    };
    class 3Rnd_UGL_FlareCIR_F: UGL_FlareWhite_F {
        displayName = CSTRING(3rFlareCIR_Name);
    };
    class 3Rnd_UGL_FlareYellow_F: UGL_FlareYellow_F {
        scope = 1;
    };
};
