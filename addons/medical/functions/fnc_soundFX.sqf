#include "script_component.hpp"

params ["_sound", "_target", "_selectionName"];

private _position = (_target modelToWorldVisual (_target selectionPosition _selectionName));
playSound3D [_sound, objNull, false, _position, 2, 1, 0];
