#include "\z\ace\addons\main\script_macros.hpp"

#define PRIVATE 0
#define PROTECTED 1
#define PUBLIC 2

#ifdef DEBUG_MODE_FULL
    #define PING(var) systemChat format ["%1 (%2)",var,__FILE__]
#endif
