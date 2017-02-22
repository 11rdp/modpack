class CfgAmmo {
    class FlareBase;
    class F_40mm_White: FlareBase {
        timeToLive = 43;
        typicalSpeed = 76;
        intensity = 1500000;
    };
    class RDP_40mm_FlareCluster: F_40mm_White {
        deflecting = 60;
        timeToLive = 11;
        triggerTime = 4;
    };
};
