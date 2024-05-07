class CfgVehicles {
	// Black backpack
	class B_Carryall_khk;
	class ade_item_bag: B_Carryall_khk {
		scope = 2;
		model = "\A3\weapons_f\Ammoboxes\bags\Backpack_Tortila";
		displayName = "Diving Bag (ADE)";
		descriptionShort = "Black backpack for transporting the divers equipment.";
		author = "[ADE]";
		picture = "\A3\weapons_f\ammoboxes\bags\data\ui\icon_B_C_Tortila_blk.paa";
		hiddenSelectionsTextures[] = {"\A3\weapons_f\ammoboxes\bags\data\backpack_tortila_blk_co.paa"};
		maximumLoad = 500;
		mass = 5;
	};
};
