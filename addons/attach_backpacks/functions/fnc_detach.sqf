#include "script_component.hpp"

params ["_caller"];

private _backpack = _caller getVariable [QGVAR(attachedBackpack),""];
private _backpackItems = _caller getVariable [QGVAR(attachedBackpackContent),[]];
private _backpackHolder = _caller getVariable [QGVAR(attachedBackpackHolder),[]];

_caller addBackpack _backpack;
clearAllItemsFromBackpack _caller;
{_caller addItemToBackpack _x} count _backpackItems;

[_backpackHolder] call FUNC(destroyBackpackHolder);
_caller forceWalk false;

_caller setVariable [QGVAR(attachedBackpack), "", true];
_caller setVariable [QGVAR(attachedBackpackContent), [], true];
_caller setVariable [QGVAR(attachedBackpackHolder), objNull, true];
