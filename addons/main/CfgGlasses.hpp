class CfgGlasses {
	class None;
	class ade_item_goggles: None {
		author = "[ADE]";
		scope = 2;
		ace_color[] = {0, 0, -1}; // Post-proccess color
		ace_tintAmount = 0; // Amount of tint applied to the color
		ace_resistance = 1; // Resistance to breaking (0 or 1 or 2)
		ace_protection = 0; // Provides protection (0-no, 1-yes)
		ACE_Overlay = "\z\ace\addons\goggles\textures\HUD\DivingGoggles.paa";
		ACE_OverlayCracked = "\z\ace\addons\goggles\textures\HUD\DivingGogglesCracked.paa";
		model = "\A3\characters_f\Heads\glasses\g_diving";
		displayName = "Diving Mask (ADE)";
		descriptionShort = "Shockproof diving goggles made of tempered glass.";
		picture = "\A3\characters_F\data\ui\icon_G_Diving_CA.paa";
		mass = 0; // Has to be 0, because even if inventory is full, it has to be added
		identityTypes[] = {
			"NoGlasses",0,
			"G_NATO_default",0,
			"G_NATO_casual",0,
			"G_NATO_pilot",0,
			"G_NATO_recon",0,
			"G_NATO_SF",0,
			"G_NATO_sniper",0,
			"G_NATO_diver",0,
			"G_IRAN_default",0,
			"G_IRAN_diver",0,
			"G_GUERIL_default",0,
			"G_HAF_default",0,
			"G_CIVIL_female",0,
			"G_CIVIL_male",0
		};
	};
};
