#include "script_component.hpp"

private _config = configFile >> "RDP_Settings";
private _countOptions = count _config;

for "_index" from 0 to (_countOptions - 1) do {
    private _optionEntry = _config select _index;
    private _name = configName _optionEntry;

    if (isNil _name) then {
        private _typeName = getText (_optionEntry >> "typeName");
        if (_typeName == "") then {
            _typeName = "SCALAR";
        };
        private _value = 0;
        switch (_typeName) do {
            case ("SCALAR"): {_value = getNumber (_optionEntry >> "value")};
            case ("BOOL"): {_value = (getNumber (_optionEntry >> "value")) > 0};
            case ("STRING"): {_value = getText (_optionEntry >> "value")};
            case ("ARRAY"): {_value = getArray (_optionEntry >> "value")};
        };
        [_name, _value, true] call FUNC(setSetting);
    };
};
