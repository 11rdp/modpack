class ACE_ArmLeft {
    class FieldDressing;
    class RDP_Splint: FieldDressing {
        displayName = CSTRING(Actions_Splint);
        condition = QUOTE([ARR_4(_player,_target,'hand_l','RDP_Splint')] call ace_medical_fnc_canTreatCached);
        statement = QUOTE([ARR_5(_player,_target,'hand_l','RDP_Splint',GVAR(splintSounds))] call DFUNC(treatment));
        icon = QPATHTOF(ui\icons\splint_ca.paa);
    };
};

class ACE_ArmRight {
    class FieldDressing;
    class RDP_Splint: FieldDressing {
        displayName = CSTRING(Actions_Splint);
        condition = QUOTE([ARR_4(_player,_target,'hand_r','RDP_Splint')] call ace_medical_fnc_canTreatCached);
        statement = QUOTE([ARR_5(_player,_target,'hand_r','RDP_Splint',GVAR(splintSounds))] call DFUNC(treatment));
        icon = QPATHTOF(ui\icons\splint_ca.paa);
    };
};

class ACE_LegLeft {
    class FieldDressing;
    class RDP_Splint: FieldDressing {
        displayName = CSTRING(Actions_Splint);
        condition = QUOTE([ARR_4(_player,_target,'leg_l','RDP_Splint')] call ace_medical_fnc_canTreatCached);
        statement = QUOTE([ARR_5(_player,_target,'leg_l','RDP_Splint',GVAR(splintSounds))] call DFUNC(treatment));
        icon = QPATHTOF(ui\icons\splint_ca.paa);
    };
};

class ACE_LegRight {
    class FieldDressing;
    class RDP_Splint: FieldDressing {
        displayName = CSTRING(Actions_Splint);
        condition = QUOTE([ARR_4(_player,_target,'leg_r','RDP_Splint')] call ace_medical_fnc_canTreatCached);
        statement = QUOTE([ARR_5(_player,_target,'leg_r','RDP_Splint',GVAR(splintSounds))] call DFUNC(treatment));
        icon = QPATHTOF(ui\icons\splint_ca.paa);
    };
};
