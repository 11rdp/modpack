class CfgWeapons {
    class Binocular;
    class NVGoggles: Binocular {
        modelOptics = "";
        ACE_NightVision_radBlur = 0.2;
    };
    class NVGoggles_OPFOR: NVGoggles {
        modelOptics = "";
    };
    class NVGoggles_INDEP: NVGoggles {
        modelOptics = "";
    };
    class ACE_NVG_Gen1: NVGoggles_OPFOR {
        modelOptics = "";
        ACE_NightVision_blur = 0.4;
        ACE_NightVision_radBlur = 0.03;
    };
    class ACE_NVG_Gen2: NVGoggles_INDEP {
        modelOptics = "";
        ACE_NightVision_blur = 0.3;
        ACE_NightVision_radBlur = 0.01;
    };
    class ACE_NVG_Gen4: NVGoggles {
        modelOptics = "";
        ACE_NightVision_radBlur = 0.01;
    };
    class ACE_NVG_Wide: NVGoggles {
        scope = 1;
        modelOptics = "";
        ACE_NightVision_radBlur = 0.2;
    };
};
