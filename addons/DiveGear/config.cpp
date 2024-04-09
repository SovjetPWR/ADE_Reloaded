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

class CfgWeapons {
	class Vest_Camo_Base;
	class V_PlateCarrier1_rgr;
	class VestItem;
	class UKSF_LARV_1: V_PlateCarrier1_rgr {
		scope = 2;
		author = "UKSF Mod Team";
		displayName = "LAR-V Rebreather (Molle) (ADE)";
		picture = "\A3\characters_f\Data\UI\icon_V_RebreatherB_CA.paa";
		model = "DiveGear\Models\LARV_1.p3d";
		hiddenUnderwaterSelections[] = {
			"hide"
		};
		shownUnderwaterSelections[] = {
			"unhide",
			"unhide2"
		};
		hiddenUnderwaterSelectionsTextures[] = {
			"\DiveGear\data\scuba_attachments_co.paa",
			"\DiveGear\data\scuba_attachments_co.paa",
			"\A3\characters_f\data\visors_ca.paa"
		};
		hiddenSelectionsTextures[] = {
			"\A3\characters_f\common\data\diver_equip_nato_co.paa"
		};
		class ItemInfo: VestItem {
			uniformModel = "DiveGear\Models\LARV_1.p3d";
			containerClass = "Supply160";
			vestType = "Rebreather";
			mass = 40;
			hiddenUnderwaterSelections[] = {
				"hide"
			};
			shownUnderwaterSelections[] = {
				"unhide",
				"unhide2"
			};
			hiddenUnderwaterSelectionsTextures[] = {
				"\DiveGear\data\scuba_attachments_co.paa",
				"\DiveGear\data\scuba_attachments_co.paa",
				"\A3\characters_f\data\visors_ca.paa"
			};
			hiddenSelectionsTextures[] = {
				"\A3\characters_f\common\data\diver_equip_nato_co.paa"
			};
			class HitpointsProtectionInfo {
				class Chest {
					HitpointName = "HitChest";
					armor = 22;
					PassThrough = 0.30000001;
				};
				class Diaphragm {
					HitpointName = "HitDiaphragm";
					armor = 22;
					PassThrough = 0.30000001;
				};
				class Abdomen {
					hitpointName = "HitAbdomen";
					armor = 22;
					passThrough = 0.30000001;
				};
				class Body {
					hitpointName = "HitBody";
					passThrough = 0.30000001;
				};
			};
		};
	};
	class UKSF_LARV_2: V_PlateCarrier1_rgr {
		scope = 2;
		author = "UKSF Mod Team";
		displayName = "LAR-V Rebreather (ADE)";
		picture = "\A3\characters_f\Data\UI\icon_V_RebreatherB_CA.paa";
		model = "DiveGear\Models\LARV_2.p3d";
		hiddenUnderwaterSelections[] = {
			"hide"
		};
		shownUnderwaterSelections[] = {
			"unhide",
			"unhide2"
		};
		hiddenUnderwaterSelectionsTextures[] = {
			"\DiveGear\data\scuba_attachments_co.paa",
			"\DiveGear\data\scuba_attachments_co.paa",
			"\A3\characters_f\data\visors_ca.paa"
		};
		hiddenSelectionsTextures[] = {
			"\A3\characters_f\common\data\diver_equip_nato_co.paa"
		};
		class ItemInfo: VestItem {
			uniformModel = "DiveGear\Models\LARV_2.p3d";
			containerClass = "Supply160";
			vestType = "Rebreather";
			mass = 40;
			hiddenUnderwaterSelections[] = {
				"hide"
			};
			shownUnderwaterSelections[] = {
				"unhide",
				"unhide2"
			};
			hiddenUnderwaterSelectionsTextures[] = {
				"\DiveGear\data\scuba_attachments_co.paa",
				"\DiveGear\data\scuba_attachments_co.paa",
				"\A3\characters_f\data\visors_ca.paa"
			};
			hiddenSelectionsTextures[] = {
				"\A3\characters_f\common\data\diver_equip_nato_co.paa"
			};
			class HitpointsProtectionInfo {
				class Chest {
					HitpointName = "HitChest";
					armor = 22;
					PassThrough = 0.30000001;
				};
				class Diaphragm {
					HitpointName = "HitDiaphragm";
					armor = 22;
					PassThrough = 0.30000001;
				};
				class Abdomen {
					hitpointName = "HitAbdomen";
					armor = 22;
					passThrough = 0.30000001;
				};
				class Body { 
					hitpointName = "HitBody";
					passThrough = 0.30000001;
				};
			};
		};
	};
};
