#include "script_component.hpp"

params ["_unit"];

if (!local _unit) exitWith {};
if (_unit == ACE_player) exitWith {};

private _nvg = GETVAR(_unit,GVAR(NVGoggles),"");

if (_nvg isEqualTo "NONE") exitWith {};

if (sunOrMoon == 1) then {
    _unit unlinkItem _nvg;
    INFO_2("Unlinked %2 to %1",_unit,_nvg);
};

if (sunOrMoon < 1) then {
    _unit linkItem _nvg;
    INFO_2("Linked %2 from %1",_unit,_nvg);
};
