/*
Checks if the player is in any kind of water. If so, vanilla goggles are added. If not, mod goggles are added.
*/

//Start endless loop
while {true} do
{
	//stop until player has either mod or vanilla goggles
	waitUntil {(goggles player == "ade_item_goggles") OR (goggles player == "G_B_Diving")};
	//If player is in water, ...
	if (surfaceIsWater position player && position player select 2 < 0) then
	{
		//If player is wearing the mod glasses, give him vanilla glasses. (Mod glasses are just for the effect on land, they are not "real" diving goggles)
		if (goggles player == "ade_item_goggles") then
		{
			player linkItem "G_B_Diving";
		};
		adeVarWearMaskOnLand = 1;
	}
	//If he is not in water, ...
	else
	{
		//If player is wearing vanilla goggles, give him mod goggles.
		if (goggles player == "G_B_Diving" && adeVarWearMaskOnLand == 1) then
		{
			player linkItem "ade_item_goggles";
		};

		if (goggles player == "ade_item_goggles" && adeVarWearMaskOnLand == 0) then
		{
			player linkItem "G_B_Diving";
		};						
	};
	
};
