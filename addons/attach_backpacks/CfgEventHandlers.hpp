class Extended_PreStart_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preStart));
    };
};

class Extended_PreInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preInit));
    };
};

class Extended_GetIn_EventHandlers {
    class All {
        class ADDON {
            getIn = QUOTE(_this call FUNC(handleGetIn));
        };
    };
};

class Extended_GetOut_EventHandlers {
    class All {
        class ADDON {
            getOut = QUOTE(_this call FUNC(handleGetOut));
        };
    };
};
