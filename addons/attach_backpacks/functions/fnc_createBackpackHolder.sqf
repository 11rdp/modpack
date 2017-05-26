#include "script_component.hpp"

params ["_unit", "_backpack"];

private _backpackHolder = createVehicle ["groundWeaponHolder", (getPos _unit), [], 0, "CAN_COLLIDE"];
_backpackHolder addBackpackCargoGlobal [_backpack, 1];
_backpackHolder attachTo [_unit, [-0.08,0.77,-0.35], "pelvis"];
_backpackHolder setVectorDirAndUp [[0,0,-1], [0,1,0]];

_backpackHolder
