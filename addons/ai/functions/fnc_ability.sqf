#include "script_component.hpp"

params ["_className", "_caller", ["_target", objNull], ["_args", []]];

if !(_caller isKindOf "CAManBase") exitWith {false};

private _config = (configFile >> "RDP_AI_Abilities" >> _className);

if !(isClass _config) exitWith {false};

private _exceptions = getArray (_config >> "exceptions");
if !([_exceptions, _caller, _target] call FUNC(checkExceptions)) exitWith {false};

private _condition = getText (_config >> "condition");
if (_condition == "") then {
    _condition = true;
} else {
    _condition = call compile _condition;
};
if !(_condition) exitWith {false};

// Vérification du temps de rechargement de la capacité
private _missionTime = floor CBA_missionTime;
private _coolDown = getNumber (_config >> "cooldown");
private _state = _caller getVariable [_className, -1];

if (_state != -1 && _missionTime < _state + _coolDown) exitWith {false};

// Récupération de la fonction de rappel liée à la capacité
private _callback = getText (_config >> "callback");
_callback = call compile _callback;

_caller setVariable [_className, _missionTime];

private _chances = getNumber (_config >> "chances");
if ((floor random 100) / 100 < _chances) then {
    TRACE_2("ability used",_caller,_className);
    [_caller, _target, _args] call _callback;
};
