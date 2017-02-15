#include "script_component.hpp"

params ["_logic"];

[_logic, QGVAR(EnableNvgRemoval), "EnableNvgRemoval"] call EFUNC(common,readSettingFromModule);
[_logic, QGVAR(EnableFlares), "EnableFlares"] call EFUNC(common,readSettingFromModule);

INFO("AI Module Initialized.");
