#include "script_component.hpp"

params ["_unit", "_target"];

private _weapon = primaryWeapon _unit;
private _config = (configFile >> "cfgWeapons" >> _weapon);
private _fakeGrenade = "RDP_FakeGrenadeShell";
private _muzzles = getArray (_config >> "muzzles");

private _grenadeLauncher = "";
{
    _magazines = getArray (_config >> _x >> "magazines");
    if (_fakeGrenade in _magazines) then {
        _grenadeLauncher = _x;
    };
} count _muzzles;

if (_grenadeLauncher != "") then {
    if (_unit canAdd _fakeGrenade) then {
        _unit addMagazine _fakeGrenade;
        _unit doTarget _target;
        _unit fire [_grenadeLauncher, "Single", _fakeGrenade];
        private _spawn = [(getPos _target) select 0, (getPos _target) select 1, ((getPos _target) select 2) + 180];
        [{
            private _flare = createvehicle ["F_40mm_White", (_this select 0), [], 50, "NONE"];
            _flare setVelocity [0,0,-5];
            (_this select 1) removeMagazine (_this select 2);
        }, [_spawn,_unit,_fakeGrenade], 10] call CBA_fnc_waitAndExecute;
    };
    //TRACE_3("",_grenadeLauncher,_muzzles,_weapon)
};
