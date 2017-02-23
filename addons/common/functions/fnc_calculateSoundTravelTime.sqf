#include "script_component.hpp"

params ["_source", "_target"];

if (typeName _source != "ARRAY") then {
    _source = getPosASL _source;
};

if (typeName _target != "ARRAY") then {
    _target = getPosASL _target;
};

private _temperature = (_source select 2) call ace_weather_fnc_calculateTemperatureAtHeight;
private _speedOfSound = _temperature call ace_weather_fnc_calculateSpeedOfSound;
private _distance = _source distance _target;

(_distance / _speedOfSound)
