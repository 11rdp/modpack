class RDP_Settings {
    class GVAR(EnableNvgRemoval) {
        category = CSTRING(Module_DisplayName);
        value = 1;
        typeName = "BOOL";
        displayName = CSTRING(EnableNvgRemoval_DisplayName);
        description = CSTRING(EnableNvgRemoval_Description);
    };
    class GVAR(EnableFlares) {
        category = CSTRING(Module_DisplayName);
        value = 1;
        typeName = "BOOL";
        displayName = CSTRING(EnableFlares_DisplayName);
        description = CSTRING(EnableFlares_Description);
    };
};
