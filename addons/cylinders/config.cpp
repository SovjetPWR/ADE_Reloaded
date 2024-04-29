#include "script_component.hpp"

class CfgPatches {
	class ADDON {
        name = QUOTE(COMPONENT);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"ade"};
		url = "";
		authorUrl = "";
	};
};

class CBA_Extended_EventHandlers_base;
#include "CfgEventHandlers.hpp"
