#define COMPONENT ai
#define COMPONENT_BEAUTIFIED AI
#include "\z\rdp\addons\main\script_mod.hpp"

#define DEBUG_MODE_FULL
#define DISABLE_COMPILE_CACHE
#define CBA_DEBUG_SYNCHRONOUS
#define ENABLE_PERFORMANCE_COUNTERS

#ifdef DEBUG_ENABLED_AI
    #define DEBUG_MODE_FULL
#endif

#ifdef DEBUG_SETTINGS_AI
    #define DEBUG_SETTINGS DEBUG_SETTINGS_AI
#endif

#include "\z\rdp\addons\main\script_macros.hpp"
