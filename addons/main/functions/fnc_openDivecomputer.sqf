//If player has DC in assigned items:
if ("ade_item_DiveComputer" in assignedItems player) then
{
	//Toggle for DC
	if (adeVarDiveComputerToggle == 0) then {
		adeVarDiveComputerToggle = 1;
		while {adeVarDiveComputerToggle == 1} do {
			//Display DC with values
			disableSerialization;
			titleRsc ["divecomputer_dialog","PLAIN"];
			_Anzeige = uiNamespace getVariable 'divecomputer_dialog';
			(_Anzeige displayCtrl 1111) ctrlSetText format["%1", round(adeVarCylinderPressure)];
			(_Anzeige displayCtrl 1112) ctrlSetText format["%1",(round(adeVarAmbientPressure *10))/10];
			(_Anzeige displayCtrl 1113) ctrlSetText format["%1",round(round(adeVarDepth *10))/10];
			(_Anzeige displayCtrl 1114) ctrlSetText format["%1",(round(adeVarAscendRate *10))/10];
			(_Anzeige displayCtrl 1115) ctrlSetText format["%1",[adeVarPassedDiveTime,"MM:SS"] call bis_fnc_secondstostring];
			(_Anzeige displayCtrl 1116) ctrlSetText format["%1",[adeVarRemainingDiveTime,"MM:SS"] call bis_fnc_secondstostring];
			(_Anzeige displayCtrl 1117) ctrlSetText format["%1", (round(adeVarDecoDepth *10))/10];
			(_Anzeige displayCtrl 1118) ctrlSetText format["%1", (round(adeVarDecoTime *10))/10];
			(_Anzeige displayCtrl 1119) ctrlSetText format["%1", (round(adeVarDeepstopDepth *10))/10];
			(_Anzeige displayCtrl 1120) ctrlSetText format["%1", (round(adeVarDeepstopTime *10))/10];
			(_Anzeige displayCtrl 1121) ctrlSetText format["%1", (round(adeVarMaximumOperatingDepth *10))/10];
			(_Anzeige displayCtrl 1122) ctrlSetText format["%1",[daytime,"HH:MM:SS"] call bis_fnc_timetostring];
			(_Anzeige displayCtrl 1123) ctrlSetText format["%1", round(getDir player)];
			(_Anzeige displayCtrl 1124) ctrlSetText format["%1", (round(adeVarPartialPressureO2 *10))/10];
			(_Anzeige displayCtrl 1125) ctrlSetText format["%1", (round(adeVarPartialPressureN2 *10))/10];
			(_Anzeige displayCtrl 1126) ctrlSetText format["%1%2%3%4%5", adeVarWarningN2,adeVarWarningO2,adeVarWarningAsc,adeVarWarningDeco,adeVarWarningLowPressure];
			sleep 1;	
		}
	}
	else {
		titleText ["","PLAIN"];
		adeVarDiveComputerToggle = 0;
	};
}
else
{
};

