#include "script_component.hpp"

class CfgPatches {
	class UKSF_DiveGear {
		units[] = {};
		weapons[] = {
			"UKSF_LARV_1",
			"UKSF_LARV_2"
		};
		requiredVersion = 0.1;
		requiredAddons[] = {
			"A3_Characters_F"
		};
		author = "UKSF Mod Team";
		url = "";
		authorUrl = "";
		versionDesc = "UKSF";
		version = "0.1A";
	};
};

#include "CfgWeapons.hpp"
