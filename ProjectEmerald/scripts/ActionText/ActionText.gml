// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ActionText(_user,_action,_targets)
{
	switch _action.name
	{
		case "Attack":
			switch _user.name
			{
				//the only reason broke would be attacking if continous attack
				case "Broke":
					return "Continuous Attacks!";
				break;
				
				case "Mutant Worm":
					return string(_user.name)+" Strikes At "+string(_targets[0].name)+"!";
				break
				
				case "Typha":
					return string(_user.name)+" Attacks "+string(_targets[0].name)+"!";
				break;
				
				case "Itty-Bitty Ant":
					return string(_user.name)+" Bites "+string(_targets[0].name)+"!";
				break
				
				case "Bull Frog":
					return string(_user.name)+" Charges At "+string(_targets[0].name)+"!";
				break
				
				case "Crude Spider":
					return string(_user.name)+" Slashes At "+string(_targets[0].name)+"!";
				break;
				
				case "Grinning Rock":
					return string(_user.name)+" Bashes At "+string(_targets[0].name)+"!";
				break;
				
				case "Momma Worm":
					return string(_user.name)+" Strikes At "+string(_targets[0].name)+"!";
				break;
				
				case "Armored Beetle":
					return string(_user.name)+" Slashes At "+string(_targets[0].name)+"!";
				break;
				
				case "Horned Beetle":
					return string(_user.name)+" Stabs "+string(_targets[0].name)+"!";
				break;
				
				case "Poison Thornster":
					return string(_user.name)+" Slashes At "+string(_targets[0].name)+"!";
				break;
				
				case "Mogging Mole":
					return string(_user.name)+" Slashes At "+string(_targets[0].name)+"!";
				break;
				
				case "Bane Bat":
					return string(_user.name)+" Slashes At "+string(_targets[0].name)+"!";
				break;
				
				case "Amalbonemation":
					return string(_user.name)+" Bashes At "+string(_targets[0].name)+"!";
				break;
				
				case "Ancient King":
					return string(_user.name)+" Slashes At "+string(_targets[0].name)+"!";
				break;
			}
		break
		
		case "attackAll":
			switch _user.name
			{
				case "Thunder Bird":
					return string(_user.name)+ " Created A Wind Gust With Their Wings!" 
				break;
			}
		break
		
		case "Continuous Attack":
			return string(_user.name)+ " Does A Continuous Attack!";
		break;
		
		case "betrayal":
			if _user.id != _targets[0].id
			{
				return string(_user.name)+" Betrayed There Team!";
			}
			else
			{
				return string(_user.name)+" attacks themselves...";
			}
		break
		
		case "poison":
			switch _user.name
			{
				case "Bane Bat":
					return string(_user.name)+ " Bites With Its Venomous Fangs!"
				break;
				
				case "Poison Thornster":
					return string(_user.name)+ " Poked "+string(_targets[0].name)
				break;
			}
		break;
		
		case "toss":
			switch _user.name
			{
				case "Amalbonemation":
					return string(_user.name)+" chucked a bone!"
				break;
				
				case "The Coach":
					return string(_user.name)+" tossed a kickboard!"
				break;
			}
		break;
		
		case "intimidate":
			switch _user.name
			{
				case "Mogging Mole":
					return string(_user.name)+" Struck A Pose!"
				break;
			}
		break;
	}
}