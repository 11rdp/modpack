#include "script_component.hpp"

params ["_unit", "_sunlight"];

private _nvg = _unit getVariable [QGVAR(NVGoggles), "NONE"];
private _equipped = _nvg in (assignedItems _unit);

if (_nvg isEqualTo "NONE") exitWith {false};

if (_sunlight == 1 && _equipped) then {
    _unit unlinkItem _nvg;
    INFO_2("Unlinked %2 to %1",_unit,_nvg);
};

if (_sunlight < 1 && !_equipped) then {
    _unit linkItem _nvg;
    INFO_2("Linked %2 from %1",_unit,_nvg);
};
