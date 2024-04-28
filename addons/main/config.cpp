#include "script_component.hpp"

class CfgPatches {
	class ade {
		units[] = {""};
		weapons[] = {""};
		requiredVersion = 1.0;
		requiredAddons[] = {"Extended_EventHandlers","ace_common"};
	};	
};

class CBA_Extended_EventHandlers_base;
#include "CfgEventHandlers.hpp"

// Divecomputer overlay stuff
#include "Dialog.hpp"
#include "RscTitles.hpp"

#include "CfgGlasses.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"
#include "CfgSounds.hpp"
