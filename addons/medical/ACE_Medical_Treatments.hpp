class ACE_Medical_Actions {
    class Advanced {
        class FieldDressing;
        class RDP_Splint: FieldDressing {
            displayName = CSTRING(Apply_Splint);
            displayNameProgress = CSTRING(Applying_Splint);
            allowedSelections[] = {"hand_l", "hand_r", "leg_l", "leg_r"};
            items[] = {"RDP_Splint"};
            treatmentTime = 12;
            // callbackProgress = QUOTE([((_this select 0) select 1)] call FUNC(splintSound));
            callbackSuccess = QUOTE(DFUNC(treatmentAdvanced_splint));
            condition = "";
            litter[] = {};
        };
    };
};
