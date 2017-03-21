#include "script_component.hpp"

params ["_caller"];

private _backpack = backpack _caller;
private _backpackItems = backpackItems _caller;
private _backpackHolder = createVehicle ["groundWeaponHolder", (getPos _caller) , [], 0, "CAN_COLLIDE"];

_caller setVariable [QGVAR(attachedBackpackContent),_backpackItems];
_caller setVariable [QGVAR(attachedBackpack),_backpack];
_caller forceWalk true;
TRACE_2("backpack attached",_backpack,_backpackItems);

_backpackHolder addBackpackCargoGlobal [_backpack, 1];
_backpackHolder attachTo [_caller, [-0.08,0.77,-0.35], "pelvis"];
_backpackHolder setVectorDirAndUp [[0,0,-1], [0,1,0]];
removeBackpackGlobal _caller;

_caller setVariable [QGVAR(attachedBackpackHolder),_backpackHolder];
