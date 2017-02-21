class CfgVehicles {
    class RDP_Module;
    class RDP_ModuleAI: RDP_Module {
        displayName = CSTRING(Module_DisplayName);
        function = QFUNC(moduleAI);
        scope = 2;
        isGlobal = 1;
        isSingular = 1;
        class Arguments {
            class EnableNvgRemoval {
                displayName = CSTRING(EnableNvgRemoval_DisplayName);
                description = CSTRING(EnableNvgRemoval_Description);
                typeName = "BOOL";
                defaultValue = 1;
            };
            class EnableFlares {
                displayName = CSTRING(EnableFlares_DisplayName);
                description = CSTRING(EnableFlares_Description);
                typeName = "BOOL";
                defaultValue = 1;
            };
        };
        class ModuleDescription {
           description = CSTRING(Module_Description);
        };
    };
};
