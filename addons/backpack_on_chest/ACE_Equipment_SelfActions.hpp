class ACE_Equipment {
    class GVAR(Attach) {
        displayName = CSTRING(Attach);
        condition = QUOTE(_this call DFUNC(canAttach));
        statement = QUOTE(_this call DFUNC(attach));
        exceptions[] = {"isNotDragging"};
        showDisabled = 0;
        priority = 5;
        icon = QPATHTOF(ui\icons\backpack_ca.paa);
    };
    class GVAR(Detach) {
        displayName = CSTRING(Detach);
        condition = QUOTE(_this call DFUNC(canDetach));
        statement = QUOTE(_this call DFUNC(detach));
        exceptions[] = {"isNotDragging"};
        showDisabled = 0;
        priority = 5;
        icon = QPATHTOF(ui\icons\backpack_ca.paa);
    };
};