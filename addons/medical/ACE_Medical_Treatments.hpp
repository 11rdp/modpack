class ACE_Medical_Actions {
    class Advanced {
        class FieldDressing;
        class RDP_Splint: FieldDressing {
            displayName = CSTRING(Apply_Splint);
            displayNameProgress = CSTRING(Applying_Splint);
            allowedSelections[] = {"hand_l", "hand_r", "leg_l", "leg_r"};
            items[] = {"RDP_Splint"};
            treatmentTime = 12;
            callbackSuccess = QUOTE(DFUNC(treatmentAdvanced_splint));
            condition = "";
            litter[] = {};
        };
    };
};
