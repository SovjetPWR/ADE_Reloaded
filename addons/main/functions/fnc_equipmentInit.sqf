//List of ADE Rebreathers
compat_Rebreathers = ["ade_item_rebreather","UKSF_LARV_1","UKSF_LARV_2"];


//Diving mask toggle
_toggle_ade_item_mask_on = ["toggle_ade_item_mask_on", "Put diving mask on (Surface only)", "", {adeVarWearMaskOnLand = 1;}, {((goggles player == "ade_item_goggles") || (goggles player == "G_B_Diving")) && adeVarWearMaskOnLand == 0}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _toggle_ade_item_mask_on] call ace_interact_menu_fnc_addActionToClass;

_toggle_ade_item_mask_off = ["toggle_ade_item_mask_off", "Take diving mask off (Surface only)", "", {adeVarWearMaskOnLand = 0;}, {((goggles player == "ade_item_goggles") || (goggles player == "G_B_Diving")) && adeVarWearMaskOnLand == 1}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _toggle_ade_item_mask_off] call ace_interact_menu_fnc_addActionToClass;

//Compressed air
_useCylinder_twin_compressedAir = ["useCylinder_twin_compressedAir", "Use twinset 6l, 300bar, compressed air", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_compressedAir.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_compressedAir" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_compressedAir] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_compressedAir = ["useCylinder_single_compressedAir", "Use single 6l, 300bar, compressed air", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_compressedAir.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_compressedAir" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_compressedAir] call ace_interact_menu_fnc_addActionToClass;

//Pure Oxygen
_useCylinder_twin_pureOxygen = ["useCylinder_twin_pureOxygen", "Use twinset 6l, 300bar, pure oxygen", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_pureOxygen.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_pureOxygen" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_pureOxygen] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_pureOxygen = ["useCylinder_single_pureOxygen", "Use single 6l, 300bar, pure oxygen", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_pureOxygen.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_pureOxygen" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_pureOxygen] call ace_interact_menu_fnc_addActionToClass;


 //EAN 28
_useCylinder_twin_EAN28 = ["useCylinder_twin_EAN28", "Use twinset 6l, 300bar, EAN28", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_EAN28.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_EAN28" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_EAN28] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_EAN28 = ["useCylinder_single_EAN28", "Use single 6l, 300bar, EAN28", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_EAN28.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_EAN28" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_EAN28] call ace_interact_menu_fnc_addActionToClass;


 //EAN 32
_useCylinder_twin_EAN32 = ["useCylinder_twin_EAN32", "Use twinset 6l, 300bar, EAN32", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_EAN32.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_EAN32" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_EAN32] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_EAN32 = ["useCylinder_single_EAN32", "Use single 6l, 300bar, EAN32", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_EAN32.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_EAN32" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_EAN32] call ace_interact_menu_fnc_addActionToClass;
 
 
 //EAN 36
_useCylinder_twin_EAN36 = ["useCylinder_twin_EAN36", "Use twinset 6l, 300bar, EAN36", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_EAN36.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_EAN36" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_EAN36] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_EAN36 = ["useCylinder_single_EAN36", "Use single 6l, 300bar, EAN36", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_EAN36.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_EAN36" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_EAN36] call ace_interact_menu_fnc_addActionToClass;
 
 
 //EAN 40
_useCylinder_twin_EAN40 = ["useCylinder_twin_EAN40", "Use twinset 6l, 300bar, EAN40", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_EAN40.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_EAN40" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_EAN40] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_EAN40 = ["useCylinder_single_EAN40", "Use single 6l, 300bar, EAN40", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_EAN40.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_EAN40" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_EAN40] call ace_interact_menu_fnc_addActionToClass;
 
 
 //Heliox 8.5
_useCylinder_twin_Heliox85 = ["useCylinder_twin_Heliox85", "Use twinset 6l, 300bar, Heliox 8.5", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_Heliox85.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_Heliox85" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_Heliox85] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_Heliox85 = ["useCylinder_single_Heliox85", "Use single 6l, 300bar, Heliox 8.5", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_Heliox85.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_Heliox85" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_Heliox85] call ace_interact_menu_fnc_addActionToClass;
 
 
 //Heliox 12
_useCylinder_twin_Heliox12 = ["useCylinder_twin_Heliox12", "Use twinset 6l, 300bar, Heliox 12", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_Heliox12.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_Heliox12" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_Heliox12] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_Heliox12 = ["useCylinder_single_Heliox12", "Use single 6l, 300bar, Heliox 12", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_Heliox12.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_Heliox12" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_Heliox12] call ace_interact_menu_fnc_addActionToClass;
 
 
 //Heliox 21
_useCylinder_twin_Heliox21 = ["useCylinder_twin_Heliox21", "Use twinset 6l, 300bar, Heliox 21", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_Heliox21.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_Heliox21" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_Heliox21] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_Heliox21 = ["useCylinder_single_Heliox21", "Use single 6l, 300bar, Heliox 21", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_Heliox21.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_Heliox21" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_Heliox21] call ace_interact_menu_fnc_addActionToClass;
 
 
 //Trimix 10/70
_useCylinder_twin_Tx1070 = ["useCylinder_twin_Tx1070", "Use twinset 6l, 300bar, Tx10/70", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_Tx1070.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_Tx1070" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_Tx1070] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_Tx1070 = ["useCylinder_single_Tx1070", "Use single 6l, 300bar, Tx10/70", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_Tx1070.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_Tx1070" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_Tx1070] call ace_interact_menu_fnc_addActionToClass;
 
 
 //Trimix 12/65
_useCylinder_twin_Tx1265 = ["useCylinder_twin_Tx1265", "Use twinset 6l, 300bar, Tx12/65", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_Tx1265.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_Tx1265" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_Tx1265] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_Tx1265 = ["useCylinder_single_Tx1265", "Use single 6l, 300bar, Tx12/65", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_Tx1265.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_Tx1265" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_Tx1265] call ace_interact_menu_fnc_addActionToClass;
 
 
 //Trimix 15/55
_useCylinder_twin_Tx1555 = ["useCylinder_twin_Tx1555", "Use twinset 6l, 300bar, Tx15/55", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_Tx1555.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_Tx1555" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_Tx1555] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_Tx1555 = ["useCylinder_single_Tx1555", "Use single 6l, 300bar, Tx15/55", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_Tx1555.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_Tx1555" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_Tx1555] call ace_interact_menu_fnc_addActionToClass;
 
 
 //Trimix 18/45
_useCylinder_twin_Tx1845 = ["useCylinder_twin_Tx1845", "Use twinset 6l, 300bar, Tx18/45", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_Tx1845.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_Tx1845" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_Tx1845] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_Tx1845 = ["useCylinder_single_Tx1845", "Use single 6l, 300bar, Tx18/45", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_Tx1845.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_Tx1845" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_Tx1845] call ace_interact_menu_fnc_addActionToClass;
 
 
 //Trimix  21/35
_useCylinder_twin_Tx2135 = ["useCylinder_twin_Tx2135", "Use twinset 6l, 300bar, Tx21/35", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_twin_Tx2135.sqf"}, {("ade_item_cylinder_twin_6ltr_300bar_Tx2135" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_twin_Tx2135] call ace_interact_menu_fnc_addActionToClass;
 
_useCylinder_single_Tx2135 = ["useCylinder_single_Tx2135", "Use single 6l, 300bar, Tx21/35", "", {nul = [] execvm "\z\ade_reloaded\addons\cylinders\functions\fnc_useCylinder_single_Tx2135.sqf"}, {("ade_item_cylinder_single_6ltr_300bar_Tx2135" in items player) && (vest player in compat_Rebreathers) && ((!surfaceIsWater position player || position player select 2 >= 0) || adeVarConnectedGas == 0)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "ACE_Equipment"], _useCylinder_single_Tx2135] call ace_interact_menu_fnc_addActionToClass;

//Tauchcomputer in Keybindoption und Standard auf F5
["Advanced Diving Environment","adeVarDiveComputerVisible", "Toggle Dive Computer", {execVM "\z\ade_reloaded\addons\main\functions\fnc_openDivecomputer.sqf";}, {}, [0x3e, [true, false, false]]] call CBA_fnc_addKeybind;