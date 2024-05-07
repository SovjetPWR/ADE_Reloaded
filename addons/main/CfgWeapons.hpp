class CfgWeapons {
	class ItemCore;
	class InventoryItem_Base_F;
	class VestItem;
	class V_RebreatherB;
	// Rebreather
	class ade_item_rebreather: V_RebreatherB {
		scope = 2;
		nameSound = "";
		displayName = "Rebreather (ADE)";
		descriptionShort = "Milspec rebreather for various gases.";
		author = "[ADE]";
		picture = "\A3\characters_f\Data\UI\icon_V_RebreatherB_CA.paa";
		model = "\A3\Characters_F\Common\equip_rebreather";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3\characters_f\common\data\diver_equip_nato_co.paa", "\A3\characters_f\common\data\diver_equip_nato_co.paa","\A3\characters_f\data\visors_ca.paa"};
		hiddenUnderwaterSelections[] = {"hide"};
		hiddenUnderwaterSelectionsTextures[] = {"\A3\characters_f\data\visors_ca.paa"};
		class ItemInfo: VestItem {
			uniformModel = "\A3\Characters_F\Common\equip_rebreather";
			vestType = "Rebreather";
			containerClass = "Supply100";
			mass = 10;
			armor = "5*0.2";
			passThrough = 0.8;
			hiddenSelections[] = {"camo"};
		};
	};	

	// Wetsuit
	class U_B_Wetsuit;
	class ade_item_wetsuit: U_B_Wetsuit {
		displayName = "Wetsuit (ADE)";
		descriptionShort = "All weather wetsuit";
		author = "[ADE]";
		scope = 2;
	};

	class ade_ItemCore: ItemCore {
		type = 131072;
		detectRange = 0;
		simulation = "ItemMineDetector";
	};

	// Dive computer
	class ItemGPS;
	class ade_item_DiveComputer: ItemGPS {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		picture = QPATHTOF(data\icons\ade_icon_DiveComputer.paa);
		displayName = "Dive computer";
		descriptionShort = "Wrist mounted, battery powered dive computer. Shows important data to the diver.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 1;
		};
	};

	// Tauchflasche 1Flasche 6ltr 300bar Pressluft
	class ade_item_cylinder_single_6ltr_300bar_compressedAir: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (compressed air)";
		descriptionShort = "Single 6l cylinder filled with 300bar of compressed, dried and filtered air.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10;
		};
	};	
	// Tauchflasche 2Flaschen 6ltr 300bar Pressluft	
	class ade_item_cylinder_twin_6ltr_300bar_compressedAir: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (compressed air)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of compressed, dried and filtered air.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
	// Tauchflasche 1Flasche 6ltr 300bar EAN28
	class ade_item_cylinder_single_6ltr_300bar_EAN28: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (EAN28)";
		descriptionShort = "Single 6l cylinder filled with 300bar of Enriched Air Nitrox 28.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10;
		};
	};	
	// Tauchflasche 2Flaschen 6ltr 300bar EAN28	
	class ade_item_cylinder_twin_6ltr_300bar_EAN28: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (EAN28)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of Enriched Air Nitrox 28.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
	// Tauchflasche 1Flasche 6ltr 300bar EAN32
	class ade_item_cylinder_single_6ltr_300bar_EAN32: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (EAN32)";
		descriptionShort = "Single 6l cylinder filled with 300bar of Enriched Air Nitrox 32.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10;
		};
	};	
	// Tauchflasche 2Flaschen 6ltr 300bar EAN32	
	class ade_item_cylinder_twin_6ltr_300bar_EAN32: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (EAN32)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of Enriched Air Nitrox 32.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
	// Tauchflasche 1Flasche 6ltr 300bar EAN36
	class ade_item_cylinder_single_6ltr_300bar_EAN36: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (EAN36)";
		descriptionShort = "Single 6l cylinder filled with 300bar of Enriched Air Nitrox 36.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10;
		};
	};	
	// Tauchflasche 2Flaschen 6ltr 300bar EAN36	
	class ade_item_cylinder_twin_6ltr_300bar_EAN36: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (EAN36)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of Enriched Air Nitrox 36.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
	// Tauchflasche 1Flasche 6ltr 300bar EAN40
	class ade_item_cylinder_single_6ltr_300bar_EAN40: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (EAN40)";
		descriptionShort = "Single 6l cylinder filled with 300bar of Enriched Air Nitrox 40.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10;
		};
	};	
	// Tauchflasche 2Flaschen 6ltr 300bar EAN40	
	class ade_item_cylinder_twin_6ltr_300bar_EAN40: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (EAN40)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of Enriched Air Nitrox 40.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
	// Tauchflasche 1Flasche 6ltr 300bar Heliox85
	class ade_item_cylinder_single_6ltr_300bar_Heliox85: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (Heliox 8.5)";
		descriptionShort = "Single 6l cylinder filled with 300bar of Heliox 8.5.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10;
		};
	};	
	// Tauchflasche 2Flaschen 6ltr 300bar Heliox85	
	class ade_item_cylinder_twin_6ltr_300bar_Heliox85: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (Heliox 8.5)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of Heliox 8.5.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
	// Tauchflasche 1Flasche 6ltr 300bar Heliox12
	class ade_item_cylinder_single_6ltr_300bar_Heliox12: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (Heliox 12)";
		descriptionShort = "Single 6l cylinder filled with 300bar of Heliox 12.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10;
		};
	};	
	// Tauchflasche 2Flaschen 6ltr 300bar Heliox12	
	class ade_item_cylinder_twin_6ltr_300bar_Heliox12: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (Heliox 12)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of Heliox 12.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
	// Tauchflasche 1Flasche 6ltr 300bar Heliox21
	class ade_item_cylinder_single_6ltr_300bar_Heliox21: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (Heliox 21)";
		descriptionShort  =  "Single 6l cylinder filled with 300bar of Heliox 21.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10;
		};
	};	
	// Tauchflasche 2Flaschen 6ltr 300bar Heliox21	
	class ade_item_cylinder_twin_6ltr_300bar_Heliox21: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (Heliox 21)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of Heliox 21.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
	// Tauchflasche 1Flasche 6ltr 300bar Tx2135
	class ade_item_cylinder_single_6ltr_300bar_Tx2135: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (Tx21/35)";
		descriptionShort = "Single 6l cylinder filled with 300bar of Tx21/35.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10;
		};
	};	
	// Tauchflasche 2Flaschen 6ltr 300bar Tx2135	
	class ade_item_cylinder_twin_6ltr_300bar_Tx2135: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (Tx21/35)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of Tx21/35.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
	// Tauchflasche 1Flasche 6ltr 300bar Tx1845
	class ade_item_cylinder_single_6ltr_300bar_Tx1845: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (Tx18/45)";
		descriptionShort = "Single 6l cylinder filled with 300bar of Tx18/45.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10;
		};
	};	
	// Tauchflasche 2Flaschen 6ltr 300bar Tx1845	
	class ade_item_cylinder_twin_6ltr_300bar_Tx1845: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (Tx18/45)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of Tx18/45.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
	// Tauchflasche 1Flasche 6ltr 300bar Tx1555
	class ade_item_cylinder_single_6ltr_300bar_Tx1555: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (Tx15/55)";
		descriptionShort = "Single 6l cylinder filled with 300bar of Tx15/55.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10;
		};
	};	
	// Tauchflasche 2Flaschen 6ltr 300bar Tx1555
	class ade_item_cylinder_twin_6ltr_300bar_Tx1555: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (Tx15/55)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of Tx15/55.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
	// Tauchflasche 1Flasche 6ltr 300bar Tx1265
	class ade_item_cylinder_single_6ltr_300bar_Tx1265: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (Tx12/65)";
		descriptionShort = "Single 6l cylinder filled with 300bar of Tx12/65.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10;
		};
	};	
	// Tauchflasche 2Flaschen 6ltr 300bar Tx1265
	class ade_item_cylinder_twin_6ltr_300bar_Tx1265: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (Tx12/65)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of Tx12/65.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
	// Tauchflasche 1Flasche 6ltr 300bar Tx1070
	class ade_item_cylinder_single_6ltr_300bar_Tx1070: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (Tx10/70)";
		descriptionShort = "Single 6l cylinder filled with 300bar of Tx10/70.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10;
		};
	};	
	// Tauchflasche 2Flaschen 6ltr 300bar Tx1070
	class ade_item_cylinder_twin_6ltr_300bar_Tx1070: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (Tx10/70)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of Tx10/70.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
	// Tauchflasche 1Flasche 6ltr leer
	class ade_item_cylinder_single_6ltr_empty: ade_ItemCore {
		author = "[ADE]";
		scope = 1;
		scopeArsenal = 1;
		scopeCurator = 1;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (empty)";
		descriptionShort = "One empty 6 liter diving bottle.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 8;
		};
	};
	// Tauchflasche 2Flaschen 6ltr leer
	class ade_item_cylinder_twin_6ltr_empty: ade_ItemCore {
		author = "[ADE]";
		scope = 1;
		scopeArsenal = 1;
		scopeCurator = 1;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (empty)";
		descriptionShort = "Two linked empty 6 liter diving bottles.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 16;
		};
	};
	// Cilindro singolo 6ltr pure oxygen
	class ade_item_cylinder_single_6ltr_300bar_pureOxygen: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\SingleBottle);
		picture = QPATHTOF(data\icons\ade_icon_SingleTank.paa);
		displayName = "Single 6l cylinder (pure oxygen)";
		descriptionShort = "Single 6l cylinder filled with 300bar of Pure Oxygen.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 10; 
		};
	};
	// Cilindro doppio 6ltr pure oxygen
	class ade_item_cylinder_twin_6ltr_300bar_pureOxygen: ade_ItemCore {
		author = "[ADE]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model = QPATHTOF(data\models\DoubleBottle);
		picture = QPATHTOF(data\icons\ade_icon_DoubleTank.paa);
		displayName = "Twin 6l cylinders (pure oxygen)";
		descriptionShort = "Twin 6l cylinders filled with 300bar of Pure Oxygen.";
		class ItemInfo: InventoryItem_Base_F {
			mass = 20;
		};
	};
};
