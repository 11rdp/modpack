#include "script_component.hpp"

params ["_leader", "_target"];

private _group = group _leader;
private _knowledge = _group knowsAbout _target;

if (_knowledge >= 2) then {
    private _radius = 50 * (4 - _knowledge);

    private _previousWaypoint = _group getVariable [QGVAR(chaseWaypoint), []];
    if !(_previousWaypoint isEqualto []) then {
        deleteWaypoint _previousWaypoint;
    };

    private _wp = _group addWaypoint [getPos _target, _radius];
    _wp setWaypointType "SAD";
    _wp setWaypointCompletionRadius 50;
    _wp setWaypointBehaviour "AWARE";
    _wp setWaypointCombatMode "RED";
    _group setCurrentWaypoint _wp;

    _group setVariable [QGVAR(chaseWaypoint), _wp];
};
