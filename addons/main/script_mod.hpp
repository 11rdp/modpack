// COMPONENT should be defined in the script_component.hpp and included BEFORE this hpp

#define MAINPREFIX z
#define PREFIX rdp

#define MAJOR 3
#define MINOR 0
#define PATCHLVL 0
#define BUILD 0

#define VERSION MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_AR MAJOR,MINOR,PATCHLVL,BUILD

#define RDP_TAG RDP

// MINIMAL required version for the Mod. Components can specify others..
#define REQUIRED_VERSION 1.66
#define REQUIRED_CBA_VERSION {3,1,1}
#define REQUIRED_ACE_VERSION {3,8,2}

#ifdef COMPONENT_BEAUTIFIED
    #define COMPONENT_NAME QUOTE(ACE3 - COMPONENT_BEAUTIFIED)
#else
    #define COMPONENT_NAME QUOTE(ACE3 - COMPONENT)
#endif
