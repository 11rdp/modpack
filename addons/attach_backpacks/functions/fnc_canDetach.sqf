#include "script_component.hpp"

params ["_caller"];

private _attachedBackpack = _caller getVariable [QGVAR(attachedBackpack),""];

((alive _caller) &&
{_attachedBackpack != ""} &&
{backpack _caller == ""})
