#include "script_component.hpp"

params ["_caller"];

private _backpack = _caller getVariable [QGVAR(attachedBackpack),""];
private _backpackItems = _caller getVariable [QGVAR(attachedBackpackContent),[]];
private _backpackHolder = _caller getVariable [QGVAR(attachedBackpackHolder),[]];

_caller addBackpack _backpack;
clearAllItemsFromBackpack _caller;
{_caller addItemToBackpack _x} count _backpackItems;

clearBackpackCargoGlobal _backpackHolder;
detach _backpackHolder;
deleteVehicle _backpackHolder;
_caller forceWalk false;

_caller setVariable [QGVAR(attachedBackpack),""];
_caller setVariable [QGVAR(attachedBackpackContent),[]];
_caller setVariable [QGVAR(attachedBackpackHolder),objNull];
