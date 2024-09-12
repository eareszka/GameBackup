// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ActionText(_user,_action,_targets)
{
	switch _action.name
	{
		case "Attack":
			switch _user.unitID
			{
				//the only reason broke would be attacking if continous attack
				case 2:
					return "Continuous Attacks!";
				break;
				
				case 5:
					return string(_user.name)+" Summon's Air Rod's At "+string(_targets[0].name)+"!";
				break
				
				case 4:
					return string(_user.name)+" Tosses Mud At "+string(_targets[0].name)+"!";
				break
				
				case 6:
					return string(_user.name)+" Attacks "+string(_targets[0].name)+"!";
				break;
				
				case 7:
					return string(_user.name)+" Bites "+string(_targets[0].name)+"!";
				break
				
				case 8:
					return string(_user.name)+" Charges At "+string(_targets[0].name)+"!";
				break
				
				case 9:
					if oBattle.attackSubtype=0{return string(_user.name)+" Bites "+string(_targets[0].name)+"!";}
					if oBattle.attackSubtype=1{return string(_user.name)+" Shoots A Web At "+string(_targets[0].name)+"!";}
				break;
				
				case 10:
					return string(_user.name)+" Bashes At "+string(_targets[0].name)+"!";
				break;
				
				case 19:
					return string(_user.name)+" Strikes At "+string(_targets[0].name)+"!";
				break;
				
				case 18:
					return string(_user.name)+" Bashes At "+string(_targets[0].name)+"!";
				break;
				
				case 11:
					return string(_user.name)+" Slashes At "+string(_targets[0].name)+"!";
				break;
				
				case 20:
					return string(_user.name)+" Stabs "+string(_targets[0].name)+"!";
				break;
				
				case 13:
					return string(_user.name)+" Slashes At "+string(_targets[0].name)+"!";
				break;
				
				case 12:
					return string(_user.name)+" Slashes At "+string(_targets[0].name)+"!";
				break;
				
				case 14:
					return string(_user.name)+" Slashes At "+string(_targets[0].name)+"!";
				break;
				
				case 15:
					return string(_user.name)+" Bashes At "+string(_targets[0].name)+"!";
				break;
				
				case 21:
					return string(_user.name)+" Slashes At "+string(_targets[0].name)+"!";
				break;
				
				case 26:
					return string(_user.name)+" Shoots Bubbles At "+string(_targets[0].name)+"!";
				break
				
				case 27:
					return string(_user.name)+" Puffs Steam At "+string(_targets[0].name)+"!";
				break
				
				case 28:
					return string(_user.name)+" Bites At "+string(_targets[0].name)+"!";
				break
			}
		break
		
		case "attackAll":
			switch _user.unitID
			{
				case 17:
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