// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BattleActionBox(_user,_action)
{
	if variable_struct_exists(_action,"action")
	{
		switch _user.name
		{
			case "Worm JR":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,5,-15)
					break;	
				
					case 2:
						CreateActionBox(_user,2,5,-15)
					break;	
				
					case 3:
						CreateActionBox(_user,3,5,-15)
					break;	
				}
			break;
		
		
			case "Horned Beetle":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,-70,10,true)
					break;	
				
					case 2:
						CreateActionBox(_user,2,-70,10,true)
					break;	
				
					case 3:
						CreateActionBox(_user,3,-70,10,true)
					break;	
				}
			break;
			
			
			case "Ancient King":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,-50,0,true)
					break;	
				
					case 2:
						CreateActionBox(_user,2,-50,0,true)
					break;	
				
					case 3:
						CreateActionBox(_user,3,-50,0,true)
					break;	
				}
			break;
		
		
			case "Typha":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,5,-15)
					break;	
				
					case 2:
						CreateActionBox(_user,2,5,-15)
					break;	
				
					case 3:
						CreateActionBox(_user,3,5,-15)
					break;	
				}
			break;
			
			case "Itty-Bitty Ant":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,10,-5)
					break;	
				
					case 2:
						CreateActionBox(_user,2,10,-5)
					break;	
				
					case 3:
						CreateActionBox(_user,3,10,-5)
					break;	
				}
			break;
		
		
			case "Bull Frog":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,5,-15)
					break;	
				
					case 2:
						CreateActionBox(_user,2,5,-15)
					break;	
				
					case 3:
						CreateActionBox(_user,3,5,-15)
					break;	
				}
			break;
		
		
			case "Grinning Rock":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,5,-15)
					break;	
				
					case 2:
						CreateActionBox(_user,2,5,-15)
					break;	
				
					case 3:
						CreateActionBox(_user,3,5,-15)	
					break;	
				}
			break
		
		
			case "Crude Spider":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,5,-15)
					break;	
				
					case 2:
						CreateActionBox(_user,2,5,-15)
					break;	
				
					case 3:
						CreateActionBox(_user,3,5,-15)	
					break;	
				}
			break
			
			case "Armored Beetle":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,5,-15)
					break;	
				
					case 2:
						CreateActionBox(_user,2,5,-15)
					break;	
				
					case 3:
						CreateActionBox(_user,3,5,-15)	
					break;	
				}
			break
		
			case "Poison Thornster":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,5,-15)
					break;	
				
					case 2:
						CreateActionBox(_user,2,5,-15)
					break;	
				
					case 3:
						CreateActionBox(_user,3,5,-15)	
					break;	
				}
			break
			
			case "Mogging Mole":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,5,-15)
					break;	
				
					case 2:
						CreateActionBox(_user,2,5,-15)
					break;	
				
					case 3:
						CreateActionBox(_user,3,5,-15)	
					break;	
				}
			break
			
			case "Bane Bat":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,5,-15)
					break;	
				
					case 2:
						CreateActionBox(_user,2,5,-15)
					break;	
				
					case 3:
						CreateActionBox(_user,3,5,-15)	
					break;	
				}
			break
			
			
			case "Amalbonemation":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,5,-15)
					break;	
				
					case 2:
						CreateActionBox(_user,2,5,-15)
					break;	
				
					case 3:
						CreateActionBox(_user,3,5,-15)	
					break;	
				}
			break
			
			case "Not Deer":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,5,-5)
					break;	
				
					case 2:
						CreateActionBox(_user,2,5,-5)
					break;	
				
					case 3:
						CreateActionBox(_user,3,5,-5)
					break;	
				}
			break;
			
			case "Thunder Bird":
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,15,-15)
					break;	
				
					case 2:
						CreateActionBox(_user,2,15,-15)
					break;	
				
					case 3:
						CreateActionBox(_user,3,15,-15)
					break;	
				}
			break;
		}
	}
}