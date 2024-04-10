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
	ade_post_init = "ade_var_post_init_nil = [] execVM ""\ade_core\scripts\ade_Modstart.sqf""";
};

// Divecomputer overlay stuff
#include "\z\ade_reloaded\addons\main\scripts\dialog\defines.hpp"
#include "\z\ade_reloaded\addons\main\scripts\dialog\Tauchcomputer.hpp"

#include "CfgGlasses.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"

class CfgSounds {
	sounds[] = {};
	class ade_sound_zischen {
		name = "Zischen";
		sound[] = {QPATHTOF(data\sounds\zischen.ogg), 1, 1};
		titles[] = {};
	};
	class ade_sound_beep {
		name = "Beep";
		sound[] = {QPATHTOF(data\sounds\beep.ogg), 1, 1};
		titles[] = {};
	};
};
