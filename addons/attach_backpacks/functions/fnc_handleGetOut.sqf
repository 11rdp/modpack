#include "script_component.hpp"

params ["", "", "_unit"];
TRACE_1("params",_unit);

private _attachedBackpack = _unit getVariable [QGVAR(attachedBackpack), ""];
private _attachedBackpackHolder = _unit getVariable [QGVAR(attachedBackpackHolder), objNull];
if (_attachedBackpack == "" || !isNull _attachedBackpackHolder) exitWith {};

private _backpackHolder = [_unit, _attachedBackpack] call FUNC(createBackpackHolder);

_unit setVariable [QGVAR(attachedBackpackHolder), _backpackHolder, true];
