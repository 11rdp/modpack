#include "script_component.hpp"

params ["_sound", "_selectionName", "_target"];
private _position = AGLToASL (_target modelToWorldVisual (_target selectionPosition _selectionName)); // FIXME: Error selectionPosition: Type String, expected Object

playSound3D [_sound, objNull, false, _position, 1, 1, 50];
