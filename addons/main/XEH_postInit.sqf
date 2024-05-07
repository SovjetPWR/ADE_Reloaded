#include "script_component.hpp"

if (!hasInterface) exitWith {};

[] spawn {
//Variable Init
//GUI
adeVarDiveComputerToggle = 0;
//Various
adeVarWearMaskOnLand = 1;
//Basic
adeVarGasamountInLiter = 0;
adeVarCylinderVolume = 1;
adeVarCylinderPressure = 1;
adeVarDepth = 0;
adeVarAmbientPressure = 1.0;
_adeVarCurrentAirUsage = 1;
adeVarRemainingDiveTime = 0;
adeVarPassedDiveTime = 0;
_adeVarBreathingVolumePerMinute = 15;
adeVarConnectedGas = 0;
//Tissue
_adeVarAmbientPressureCurrent = 0;
_adeVarAmbientPressureOld = 0;
_adeVarDeltaAmbientPressure = 1;
_adeVarToxicSaturation = 0;
adeVarPercentO2 = 0.21;
adeVarPercentN2 = 0.79;
adeVarPercentHe = 0;
_adeVarTotalSaturationAllGases = 0;
_adeVarSaturationCoefficent = ((ln 2)/4);
_adeVarUseO2InCalculation = 0.000000001;
_adeVarUseN2InCalculation = 0.000000001;
_adeVarUseHeInCalculation = 0.000000001;
adeVarMaximumOperatingDepth = 0;
_adeVarTissueSaturationO2 = 0;
adeVarPartialPressureO2 = 0.21;
_adeVarTissueSaturationN2 = 0;
adeVarPartialPressureN2 = 0.78;
_adeVarTissueSaturationHe = 0;
adeVarPartialPressureHe = 0;
//Deco
_adeVarDepthCurrent = 0;
_adeVarDepthOld = 0;
_adeVarSaturationA = 0;
_adeVarSaturationB = 0;
_adeVarDecoDepthCalcA = 0;
_adeVarDecoDepthCalcB = 0;
adeVarDecoTime = 0;
adeVarDecoDepth = 0;
adeVarDeepstopTime = 0;
adeVarDeepstopDepth = 0;
_adeVarDepthToDeco = 0;
_adeVarDoDeco = 0;
_adeVarDepthToDeep = 0;
_adeVarDoDeep = 0;
adeVarAscendRate = 0;
//Effectcounter
adeVarPain = 0;
_adeVarDeepstopPunish = 180;
_adeVarN2ToxicCounter = 10;
_adeVarO2ToxicCounter = 10;
_adeVarDecoToxicCounter = 10;
adeVarDiverWithoutGas = 0;
//Warnings
adeVarWarningN2 = "";
adeVarWarningO2 = "";
adeVarWarningAsc = "";
_adeVarAscCountdown = 10;
adeVarWarningLowPressure = "";
adeVarWarningDeco = "";
adeVarDecoDiminish = 5;
adeVarAirUsageSetting = 6;
adeVarSprintMultiplier = 1.2;
adeVarTissueSaturationMultiplier = 2.5;
_adeVarDecoDiveTime = 0;
//Variablen init end

//Add equipment
_nullGear = [] execVM "\z\ade_reloaded\addons\main\functions\fnc_equipmentInit.sqf";
//Start the check if player is in contact with water
_nullGoggle = [] execVM "\z\ade_reloaded\addons\main\functions\fnc_surfaceCheck.sqf";
//Start endless loop
while {true} do {
	//Pause loop until player wears the mod rebreather
	waitUntil {vest player in ["ade_item_rebreather","UKSF_LARV_1","UKSF_LARV_2"]};
	
	adeVarMaximumOperatingDepth = ((1.6/adeVarPercentO2) -1) *10;
	if(adeVarGasamountInLiter > 0.1) then {
		adeVarConnectedGas = 1;
	};
	
	//If player is under water, start
	if (eyePos player select 2 < 0) then {
		//If the player is slow or in a vehicle, use normal air consumption. Else use higher amount.
		if (((speed player) < 7.9) OR !(player == vehicle player)) then {
			_adeVarBreathingVolumePerMinute = adeVarAirUsageSetting / adeVarPercentO2;
		} else {
			_adeVarBreathingVolumePerMinute = (adeVarAirUsageSetting * adeVarSprintMultiplier) / adeVarPercentO2;
		};
		
		//General calculations
		adeVarDepth = (((getPosASL player) select 2) * -1);
		adeVarAmbientPressure = ((adeVarDepth / 10) + 1); 
		_adeVarCurrentAirUsage = adeVarAmbientPressure * (_adeVarBreathingVolumePerMinute/60);
		adeVarGasamountInLiter = (adeVarGasamountInLiter - _adeVarCurrentAirUsage);
		adeVarPassedDiveTime = adeVarPassedDiveTime + 1; 
		_adeVarDecoDiveTime = _adeVarDecoDiveTime + 1;
		_adeVarDepthToDeco = adeVarDepth - adeVarDecoDepth;
		adeVarCylinderPressure = adeVarGasamountInLiter / adeVarCylinderVolume;
		if(adeVarCylinderPressure < 0) then {
			adeVarCylinderPressure = 0;
		};
		adeVarRemainingDiveTime = ((adeVarGasamountInLiter / _adeVarCurrentAirUsage));
		_adeVarDepthCurrent = (((getPosASL player) select 2) * -1);
		_adeVarAmbientPressureCurrent = ((_adeVarDepthCurrent / 10) + 1);
		_adeVarDepthToDeep = adeVarDepth - adeVarDeepstopDepth;
		
		//Tissue saturation
		_adeVarTotalSaturationAllGases = _adeVarTissueSaturationN2 + _adeVarTissueSaturationHe + _adeVarTissueSaturationO2;
		_adeVarToxicSaturation = _adeVarTissueSaturationN2 + _adeVarTissueSaturationHe;
		adeVarPartialPressureN2 = adeVarPercentN2 * adeVarAmbientPressure;
		adeVarPartialPressureHe = adeVarPercentHe * adeVarAmbientPressure;
		adeVarPartialPressureO2 = adeVarPercentO2 * adeVarAmbientPressure;
		
		//If He is peresent, use it in calc
		if (adeVarPercentHe > 0.1) then {
			_adeVarUseHeInCalculation = 1;
		} else {
			_adeVarUseHeInCalculation = 0;
		};
		//If N2 is peresent, use it in calc
		if (adeVarPercentN2 > 0.1) then {
			_adeVarUseN2InCalculation = 1;
		} else {
			_adeVarUseN2InCalculation = 0;
		};

		//Wait 1 sec
		sleep 1;

		_adeVarDepthOld = (((getPosASL player) select 2) * -1);
		_adeVarAmbientPressureOld = ((_adeVarDepthOld / 10) + 1);
		_adeVarDeltaAmbientPressure = (_adeVarAmbientPressureOld - _adeVarAmbientPressureCurrent)/60;
		adeVarAscendRate = _adeVarDepthCurrent - _adeVarDepthOld;

		//Calculate tissue saturation for each gas
		_adeVarTissueSaturationN2 = adeVarTissueSaturationMultiplier * ((adeVarPercentN2 * (adeVarAmbientPressure - 0.0567)) + ((_adeVarDeltaAmbientPressure /60) * adeVarPercentN2) * ((_adeVarDecoDiveTime/60) -(1/_adeVarSaturationCoefficent)) - ((adeVarPercentN2 * (adeVarAmbientPressure - 0.0567)) - (adeVarPercentN2 * 0.736) - (((_adeVarDeltaAmbientPressure /60) * adeVarPercentN2)/_adeVarSaturationCoefficent)) * exp ((-_adeVarSaturationCoefficent * (_adeVarDecoDiveTime/60))));
		_adeVarTissueSaturationHe = adeVarTissueSaturationMultiplier * ((adeVarPercentHe * (adeVarAmbientPressure - 0.0567)) + ((_adeVarDeltaAmbientPressure /60) * adeVarPercentHe) * ((_adeVarDecoDiveTime/60) -(1/_adeVarSaturationCoefficent)) - ((adeVarPercentHe * (adeVarAmbientPressure - 0.0567)) - (adeVarPercentHe * 0.736) - (((_adeVarDeltaAmbientPressure /60) * adeVarPercentHe)/_adeVarSaturationCoefficent)) * exp ((-_adeVarSaturationCoefficent * (_adeVarDecoDiveTime/60))));
		_adeVarTissueSaturationO2 = adeVarTissueSaturationMultiplier * ((adeVarPercentO2 * (adeVarAmbientPressure - 0.0567)) + ((_adeVarDeltaAmbientPressure /60) * adeVarPercentO2) * ((_adeVarDecoDiveTime/60) -(1/_adeVarSaturationCoefficent)) - ((adeVarPercentO2 * (adeVarAmbientPressure - 0.0567)) - (adeVarPercentO2 * 0.736) - (((_adeVarDeltaAmbientPressure /60) * adeVarPercentO2)/_adeVarSaturationCoefficent)) * exp ((-_adeVarSaturationCoefficent * (_adeVarDecoDiveTime/60))));

		//Adjust saturation to the used gas
		switch (true) do {
			//NO N2 present: Heliox
			case (adeVarPercentN2 < 0.1): {
				_adeVarSaturationA = ((1.37 * _adeVarTissueSaturationHe) + (1.382 * _adeVarTissueSaturationO2)) / ((_adeVarUseHeInCalculation * 1.37) + (_adeVarUseO2InCalculation * 1.382));
				_adeVarSaturationB = ((0.03870 * _adeVarTissueSaturationHe) + (0.03186 * _adeVarTissueSaturationO2)) / ((_adeVarUseHeInCalculation * 0.03870) +(0.03186 * _adeVarUseO2InCalculation));
				_adeVarDecoDepthCalcA = (((_adeVarTissueSaturationHe + _adeVarTissueSaturationO2) -_adeVarSaturationA) * _adeVarSaturationB) * 3.28;
				_adeVarDecoDepthCalcB = (_adeVarDecoDepthCalcA + _adeVarToxicSaturation) * 2.6;
			};
			//NO He present: EAN
			case (adeVarPercentHe < 0.1): {
				_adeVarSaturationA = ((1.37 * _adeVarTissueSaturationN2) + (1.382 * _adeVarTissueSaturationO2)) / ((_adeVarUseN2InCalculation * 1.37) + (_adeVarUseO2InCalculation * 1.382));
				_adeVarSaturationB = ((0.03870 * _adeVarTissueSaturationN2) + (0.03186 * _adeVarTissueSaturationO2)) / ((_adeVarUseN2InCalculation * 0.03870) + (0.03186 * _adeVarUseO2InCalculation));
				_adeVarDecoDepthCalcA = (((_adeVarTissueSaturationN2 + _adeVarTissueSaturationO2) - _adeVarSaturationA) * _adeVarSaturationB) * 3.28;
				_adeVarDecoDepthCalcB = (_adeVarDecoDepthCalcA + _adeVarToxicSaturation) * 2.6;
			};
			//O2, N2 and He present: Comp Air or TX
			case ((adeVarPercentO2 > 0.09) && (adeVarPercentHe >= 0.1) && (adeVarPercentN2 >= 0.1)): {
				_adeVarSaturationA = ((1.37 * _adeVarTissueSaturationN2) + (0.0346 * _adeVarTissueSaturationHe)) / ((_adeVarUseN2InCalculation * 1.37) + (_adeVarUseHeInCalculation * 0.0346));
				_adeVarSaturationB = ((0.03870 * _adeVarTissueSaturationN2) +(0.02380 * _adeVarTissueSaturationHe)) / ((_adeVarUseN2InCalculation * 0.03870) + (_adeVarUseHeInCalculation * 0.02380));
				_adeVarDecoDepthCalcA = (((_adeVarTissueSaturationN2 + _adeVarTissueSaturationHe) - _adeVarSaturationA) * _adeVarSaturationB) * 3.28;
				_adeVarDecoDepthCalcB = _adeVarDecoDepthCalcA + 0.00001;
			};
		};

		if ((adeVarDecoDepth < _adeVarDecoDepthCalcB) && (_adeVarDoDeco == 0)) then {
			if(adeVarDepth >= 11) then {
				adeVarDecoDepth = (round(_adeVarDecoDepthCalcB / 10)) * 10;
				adeVarDecoTime = (adeVarDecoDepth * (round(_adeVarTotalSaturationAllGases * 3))) / adeVarDecoDiminish;
			};
		};

		//If DecoDepth >= 10m OR DecoTime >= 3min, deco is necessary
		if(((adeVarDecoDepth >= 10) OR (adeVarDecoTime >= 180)) && (_adeVarDoDeco == 0)) then {
			_adeVarDoDeco = 1;
		};

		//If DecoDepth is bigger than 15m, Deepstop is necessary
		if((_adeVarDecoDepthCalcB > 15) && (_adeVarDoDeep == 0)) then {
			adeVarDeepstopDepth = round(adeVarDepth / 2);
			adeVarDeepstopTime = (adeVarDecoDepth * (round(_adeVarTotalSaturationAllGases * 2.5))) / adeVarDecoDiminish;            
			_adeVarDoDeep = 1;
		};

		//If player is close to DecoDepth, start deco
		if ((_adeVarDoDeco == 1) && !(_adeVarDepthToDeco > 1) && !(_adeVarDepthToDeco < -1)) then {
			adeVarDecoTime = adeVarDecoTime - 1;
			if(adeVarDecoTime < 1) then {
				_adeVarDecoDiveTime = 0;
				_adeVarTissueSaturationN2 = 0;
				_adeVarTissueSaturationHe = 0;
				_adeVarTissueSaturationO2 = 0;
			};
		} else {
			if(adeVarDecoTime <= 60) then {
				if (((adeVarDecoDepth * (round(_adeVarTotalSaturationAllGases * 3))) / adeVarDecoDiminish) <= 60) then{
					adeVarDecoTime = (adeVarDecoDepth * (round(_adeVarTotalSaturationAllGases * 3))) / adeVarDecoDiminish;
				};
			};
		};

		//If DecoTime has passed, deco is done
		if(adeVarDecoTime < 1) then {
			adeVarDecoTime = 0;
			adeVarDecoDepth = 0;
			_adeVarDoDeco = 0;
		};

		//If player is close to DeepstopDepth, start deepstop
		if ((_adeVarDoDeep == 1) && !(_adeVarDepthToDeep > 1) && !(_adeVarDepthToDeep < -1)) then {
			adeVarDeepstopTime = adeVarDeepstopTime - 1;
			//If DeepstopTime is 0, the stop is finished
			if(adeVarDeepstopTime <= 0) then {
				adeVarDeepstopTime = 0;
				adeVarDeepstopDepth = 0;
				_adeVarDoDeep = 0;
				_adeVarDeepstopPunish = 180;
			};
		} else {
			//Refresh deep stop depth and time
			if((_adeVarDoDeep == 1) && ((adeVarDepth / 2) > adeVarDeepstopDepth)) then{
				adeVarDeepstopDepth = round(adeVarDepth / 2);
				adeVarDeepstopTime = (adeVarDecoDepth * (round(_adeVarTotalSaturationAllGases * 2.5))) / adeVarDecoDiminish;
			};
		};

		//If player ignores Deepstop, disable sprinting for 3min
		if ((_adeVarDoDeep == 1) && (adeVarDeepstopTime > 1) && ((adeVarDepth + 2) <= adeVarDeepstopDepth)) then {
			player allowSprint false;
			_adeVarDeepstopPunish = _adeVarDeepstopPunish - 1;
			adeVarDeepstopDepth = 0;
			adeVarDeepstopTime = 0;
		};
		//Player can sprint again after 3min
		if (_adeVarDeepstopPunish == 0) then {
			player allowSprint true;
		};

		//Count down on the O2 counter when player dives deeper than MOD
		if (adeVarDepth > adeVarMaximumOperatingDepth) then {
			adeVarWarningO2 = "!ppO2!";
			playSound "ade_sound_beep";
			_adeVarO2ToxicCounter = _adeVarO2ToxicCounter - 1;
			//If counter reaches 0, start O2 toxic effects. Otherwise on 10				
			if (_adeVarO2ToxicCounter == 0) then {
				_nullO = ["true", "true"] execVM "\z\ade_reloaded\addons\main\functions\fnc_O2Toxic.sqf";			
				_adeVarO2ToxicCounter = 2;
			};
		} else {
			adeVarWarningO2 = "";
			_adeVarO2ToxicCounter = 10;
		};
		//Add pain if player ascends too fast with needed deco
		if (((adeVarDecoTime > 0) && (adeVarAscendRate > 1)) || ((adeVarDepth > 10) && (adeVarAscendRate > 1))) then {
			adeVarWarningAsc = "!ASC RATE!";
			playSound "ade_sound_beep";
			_adeVarAscCountdown = _adeVarAscCountdown - 1;
			if (_adeVarAscCountdown == 0) then {
				adeVarPain = player getVariable "ACE_medical_pain";
				[player, adeVarPain + 0.1] call ace_medical_fnc_adjustPainLevel;
				_adeVarAscCountdown = 5;
			};
		} else {
			adeVarWarningAsc = "";
			_adeVarAscCountdown = 10;
		};

		//If player ascends over the deco depth start countdown
		if ((adeVarDecoTime > 0) && (adeVarDepth < (adeVarDecoDepth - 2.5))) then {
			_adeVarDecoToxicCounter = _adeVarDecoToxicCounter - 1;
			adeVarWarningDeco = "!DECO!";
			playSound "ade_sound_beep";
			//If countdown on 0, start DCS effect
			if (_adeVarDecoToxicCounter == 0) then {
				_nullDeko = ["true", "true"] execVM "\z\ade_reloaded\addons\main\functions\fnc_DCS.sqf";
				_adeVarDecoToxicCounter = 2;
			};
		} else {
			adeVarWarningDeco = "";
			_adeVarDecoToxicCounter = 10;
		};
		//Count down on N2 counter if ppN2 gets too big
		if (adeVarPartialPressureN2 > 3.5) then {
			adeVarWarningN2 = "!ppN2!";
			_adeVarN2ToxicCounter = _adeVarN2ToxicCounter - 1;
			//If countdown reaches 0, start effect
			if (_adeVarN2ToxicCounter == 0) then {
				_nullN = ["true", "true"] execVM "\z\ade_reloaded\addons\main\functions\fnc_N2Toxic.sqf";
				_adeVarN2ToxicCounter = 2;
			};
		} else {
			adeVarWarningN2 = "";
			_adeVarN2ToxicCounter = 10;
		};
		//Show warning if pressure is lower than 50bar
		if (adeVarCylinderPressure < 50) then {
			adeVarWarningLowPressure = "!LOW AIR!";
		} else {
			adeVarWarningLowPressure = "";
		};
		//If player is out of air, start counter
		if (adeVarCylinderPressure <= 0) then {
			adeVarDiverWithoutGas = adeVarDiverWithoutGas + 1;
			adeVarWarningLowPressure = "!NO AIR!";
		}; 
		//After 2min without air, kill player
		if (adeVarDiverWithoutGas == 60) then {
			player setDamage 1;
		};
	} else {
		//If player is above water:

		//Set variables to normal
		adeVarAmbientPressure = ((adeVarDepth / 10) + 1);  
		adeVarDecoTime = 0;
		adeVarDecoDepth = 0;
		adeVarDepth = 0;
		adeVarAscendRate = 0;
		_adeVarDecoDiveTime = 0;
		adeVarPassedDiveTime = 0;
		if(_adeVarDoDeco >= 1) then {
			[player, adeVarPain + 1] call ace_medical_fnc_adjustPainLevel;
			[player, 0.8, "body", "unknown"] call ace_medical_fnc_addDamageToUnit;
			[player, 0.5, "head", "unknown"] call ace_medical_fnc_addDamageToUnit;
		};
		adeVarPain = 0;
		_adeVarDoDeco = 0;
		adeVarDeepstopTime = 0;
		adeVarDeepstopDepth = 0;
		_adeVarDoDeep = 0;
		adeVarDiverWithoutGas = 0;
		_adeVarN2ToxicCounter = 10;
		_adeVarO2ToxicCounter = 10;
		_adeVarDecoToxicCounter = 10;
		adeVarWarningN2 = "";
		adeVarWarningO2 = "";
		adeVarWarningAsc = "";
		_adeVarAscCountdown = 10;
		adeVarWarningLowPressure = "";
		adeVarWarningDeco = "";

		_adeVarBreathingVolumePerMinute = adeVarAirUsageSetting / adeVarPercentO2;
		_adeVarCurrentAirUsage = _adeVarBreathingVolumePerMinute / 60;
		adeVarCylinderPressure = adeVarGasamountInLiter / adeVarCylinderVolume;
		adeVarRemainingDiveTime = (adeVarGasamountInLiter / _adeVarCurrentAirUsage);
	};
};

};
