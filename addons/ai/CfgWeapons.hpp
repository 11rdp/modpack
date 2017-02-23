class CfgWeapons {
    class Default;
    class ItemCore;

    class GrenadeLauncher: Default {
        RDP_noiseAttenuation = 0.5;
    };
    class Put: Default {
        RDP_noiseAttenuation = 1;
    };
    class Throw: GrenadeLauncher {
        RDP_noiseAttenuation = 1;
    };
    class muzzle_snds_H: ItemCore {
        RDP_noiseAttenuation = 0.5;
    };

    // Compatibilité Robert Hammer's M4
    class RH_qdss_nt4: ItemCore {
        RDP_noiseAttenuation = 0.5;
    };
    class RH_saker: ItemCore {
        RDP_noiseAttenuation = 0.5;
    };
    class RH_spr_mbs: ItemCore {
        RDP_noiseAttenuation = 0.5;
    };

};
