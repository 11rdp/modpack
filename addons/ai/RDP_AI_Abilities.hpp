class RDP_AI_Abilities {
    class RDP_ThrowFlare {
        callback = QUOTE(DFUNC(ability_throwFlare));
        chances = 1;
        exceptions[] = {"notInVehicle", "hasTarget"};
        condition = QUOTE(GVAR(EnableFlares));
        cooldown = 120;
    };
    class RDP_ThrowSmokeShell {
        callback = QUOTE(DFUNC(ability_throwSmokeShell));
        chances = 0.75;
        exceptions[] = {"notInVehicle"};
        condition = "";
        cooldown = 45;
    };
    class RDP_ChaseEnemy {
        callback = QUOTE(DFUNC(ability_chaseEnemy));
        chances = 1;
        exceptions[] = {};
        condition = "";
        cooldown = 120;
    };
    class RDP_SuppressiveFire {
        callback = QUOTE(DFUNC(ability_suppressiveFire));
        chances = 0.75
        exceptions[] = {"notInVehicle", "hasTarget", "farFromTarget"};
        condition = "";
        cooldown = 60;
    };
};
