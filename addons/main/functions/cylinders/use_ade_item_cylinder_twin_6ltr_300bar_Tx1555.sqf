adeVarGasamountInLiter = 3600;	
adeVarCylinderVolume = 12;
adeVarCylinderPressure = 300;
adeVarPercentO2 = 0.15;
adeVarPercentN2 = 0.30;
adeVarPercentHe = 0.55;
adeVarDiverWithoutGas = 0;
player removeItem "ade_item_cylinder_linked_6ltr_300bar_Tx1555";
playSound "ade_sound_zischen";
hint "Filled rebreather using linked 6l cylinders, filled with 300bar of Tx 15/55.";
player addItem "ade_item_cylinder_linked_6ltr_empty";