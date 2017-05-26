#include "script_component.hpp"

params ["_backpackHolder"];

clearBackpackCargoGlobal _backpackHolder;
detach _backpackHolder;
deleteVehicle _backpackHolder;
