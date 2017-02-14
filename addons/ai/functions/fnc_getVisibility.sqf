#include "script_component.hpp"

params ["_unit"];
private _visibility = 1;

switch (sunOrMoon) do {
    case (1): {
        _visibility = _visibility;
    };
    case (0): {
        _visibility = _visibility - 0.5;
    };
    default {
        _visibility = _visibility - 0.2
    };
};

if (rain > .6) then {
    _visibility = _visibility - .1;
};

_visibility = _visibility - fog;

if (_visibility <= 0.38) then {
    _visibility = 0.38;
};

_visibility
