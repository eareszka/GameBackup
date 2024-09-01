// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BattleActionBox(_user,_action)
{
	if variable_struct_exists(_action,"action")
	{
		switch _user.unitID
		{
			case 28:
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,-50,5,true)
					break;	
				
					case 2:
						CreateActionBox(_user,2,-50,5,true)
					break;	
				
					case 3:
						CreateActionBox(_user,3,-50,5,true)
					break;	
				}
			break
			
			case 27:
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,-40,0,true)
					break;	
				
					case 2:
						CreateActionBox(_user,2,-40,0,true)
					break;	
				
					case 3:
						CreateActionBox(_user,3,-40,0,true)
					break;	
					
					case 4:
						//null
					break;
				}
			break
			
			case 26:
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,20,10)
					break;	
				
					case 2:
						CreateActionBox(_user,2,20,10)
					break;	
				
					case 3:
						CreateActionBox(_user,3,20,10)
					break;	
				}
			break
			
			case 18:
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,5,0)
					break;	
				
					case 2:
						CreateActionBox(_user,2,5,0)
					break;	
				
					case 3:
						CreateActionBox(_user,3,5,0)
					break;	
				}
			break
			
			case 4:
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
			
			case 5:
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
		
		
			case 20:
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
			
			
			case 21:
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
		
		
			case 6:
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
			
			case 7:
				switch _action.action
				{
					case 1:
						CreateActionBox(_user,1,-50,-5,true)
					break;	
				
					case 2:
						CreateActionBox(_user,2,-50,-5,true)
					break;	
				
					case 3:
						CreateActionBox(_user,3,-50,-5,true)
					break;	
				}
			break;
		
		
			case 8:
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
		
		
			case 10:
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
		
		
			case 9:
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
			
			case 11:
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
		
			case 13:
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
			
			case 12:
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
			
			case 14:
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
			
			
			case 15:
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
			
			case 16:
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
			
			case 17:
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