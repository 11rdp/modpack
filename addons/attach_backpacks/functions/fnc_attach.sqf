#include "script_component.hpp"

params ["_caller"];

private _backpack = backpack _caller;
private _backpackItems = backpackItems _caller;

_caller setVariable [QGVAR(attachedBackpackContent), _backpackItems, true];
_caller setVariable [QGVAR(attachedBackpack), _backpack, true];
_caller forceWalk true;
TRACE_2("backpack attached",_backpack,_backpackItems);

private _backpackHolder = [_caller, _backpack] call FUNC(createBackpackHolder);
removeBackpackGlobal _caller;

_caller setVariable [QGVAR(attachedBackpackHolder), _backpackHolder, true];
