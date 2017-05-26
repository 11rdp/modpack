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
        class RDP_Painkillers: FieldDressing {
            displayName = CSTRING(Use_Painkillers);
            displayNameProgress = CSTRING(Using_Painkillers);
            allowedSelections[] = {"head"};
            category = "medication";
            items[] = {"RDP_Painkillers"};
            treatmentTime = 1;
            callbackSuccess = "";
            condition = "";
            litter[] = {};
        };
    };
};
