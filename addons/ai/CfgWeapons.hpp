class CfgWeapons {
    class Default;
    class ItemCore;

    class GrenadeLauncher: Default {
        RDP_muzzleBlastSoundReduction = 0.8;
    };
    class Put: Default {
        RDP_muzzleBlastSoundReduction = 1;
    };
    class Throw: GrenadeLauncher {
        RDP_muzzleBlastSoundReduction = 1;
    };
    class muzzle_snds_H: ItemCore {
        RDP_muzzleBlastSoundReduction = 0.9;
    };

    // Compatibilité Robert Hammer's M4
    class RH_qdss_nt4: ItemCore {
        RDP_muzzleBlastSoundReduction = 0.9;
    };
    class RH_saker: ItemCore {
        RDP_muzzleBlastSoundReduction = 0.9;
    };
    class RH_spr_mbs: ItemCore {
        RDP_muzzleBlastSoundReduction = 0.9;
    };
};
