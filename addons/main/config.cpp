#include "script_component.hpp"

class CfgPatches {
	class ade {
		units[] = {""};
		weapons[] = {""};
		requiredVersion = 1.0;
		requiredAddons[] = {"Extended_EventHandlers","ace_common"};
	};	
};

// Starting the script
class Extended_PostInit_EventHandlers {
	ade_post_init = "ade_var_post_init_nil = [] execVM ""\z\ade_reloaded\addons\main\functions\ade_Modstart.sqf""";
};

// Divecomputer overlay stuff
#include "Dialog.hpp"
#include "RscTitles.hpp"

#include "CfgGlasses.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"
#include "CfgSounds.hpp"
