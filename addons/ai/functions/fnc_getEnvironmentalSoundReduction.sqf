#include "script_component.hpp"

private _buildingReduction = 0;
if ([_this] call ace_common_fnc_isInBuilding) then {
    _buildingReduction = 0.2;
};

((overcast + rain + (lightnings * 1.5)) / 10) + _buildingReduction
