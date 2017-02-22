class CfgAmmo {
    class FlareBase;
    class F_40mm_White: FlareBase {
        timeToLive = 43;
        smokeColor[] = {1,1,0.7,0.5};
        lightColor[] = {0.5,0.5,0.4,0.5};
        typicalSpeed = 76;
        intensity = 1500000;
    };
    class F_40mm_Cir: F_40mm_White {
        intensity = 10;
    };
    class RDP_40mm_FlareCluster: F_40mm_White {
        deflecting = 60;
        timeToLive = 11;
        triggerTime = 4;
    };
};
