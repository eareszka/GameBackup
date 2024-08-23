event_inherited();

//for intro
if !setup
{
	if y>nonDefenseY
	{
		y-=1;
	}
	else
	{
		y=nonDefenseY
		setup=true
	}
}


//if setup
//{
//	switch name
//	{
//		case "Emory":
//			if oBattle.playerTurn=true
//			{
//				x=oBattle.partyStats[0].xPos+32
//				y=oBattle.partyStats[0].yPos-6
//			}
//			else
//			{
//				if oBattle.defendStart=false
//				{
//					y+=2	
//				}
//				else
//				{
//					if targeted
//					{
//						if !dodgeSetup
//						{
//							x=(oBattle.partyStats[0].xPos+32)
//						}
//						dodgePhase=true	
//					}
//					else
//					{
//						y+=2	
//					}
//				}
//			}
//		break;
		
//		case "Fin":
//			if oBattle.playerTurn=true
//			{
//				x=oBattle.partyStats[1].xPos+32
//				y=oBattle.partyStats[1].yPos-6
//			}
//			else
//			{
//				if oBattle.defendStart=false
//				{
//					y+=2	
//				}
//				else
//				{
//					if targeted
//					{
//						x=oBattle.partyStats[1].xPos+32
//						y=oBattle.partyStats[1].yPos-6	
//					}
//					else
//					{
//						y+=2	
//					}
//				}
//			}
//		break;
		
//		case "Broke":
//			if oBattle.playerTurn=true
//			{
//				x=oBattle.partyStats[2].xPos+32
//				y=oBattle.partyStats[2].yPos-6
//			}
//			else
//			{
//				if oBattle.defendStart=false
//				{
//					y+=2	
//				}
//				else
//				{
//					if targeted
//					{
//						x=oBattle.partyStats[2].xPos+32
//						y=oBattle.partyStats[2].yPos-6	
//					}
//					else
//					{
//						y+=2	
//					}
//				}
//			}
//		break;
		
//		case "Jen":
//			if oBattle.playerTurn=true
//			{
//				x=oBattle.partyStats[3].xPos+32
//				y=oBattle.partyStats[3].yPos-6
//			}
//			else
//			{
//				if oBattle.defendStart=false
//				{
//					y+=2	
//				}
//				else
//				{
//					if targeted
//					{
//						x=oBattle.partyStats[3].xPos+32
//						y=oBattle.partyStats[3].yPos-6	
//					}
//					else
//					{
//						y+=2	
//					}
//				}
//			}
//		break;
//	}
//}


//if dodgePhase=true
//{
//	if !dodgeSetup
//	{
//		y=DefenseY+5
//		//if y<=DefenseY
//		//{
//		//	y+=.80
//		//}
//		//else
//		//{
//		//	//dodgeSetup=true	
//		//	y=DefenseY
//		//}

			
		
//		sprite_index=sprites.dodge	
	
//		if image_index<=3
//		{
//			image_index++	
//		}
//		else
//		{
//			image_index=3	
//		}
//	}
//	if dodgeSetup
//	{
		
//		if left_key
//		{
//			image_index=5
		
//			if dodgePos!=0{dodgePos-=1}
//		}
	
//		if right_key
//		{
//			image_index=6
		
//			if dodgePos!=2{dodgePos+=1}
//		}
	
//		if dodgePos=2 //right
//		{
//			image_index=3
		
//			var _speed=2
//			var _setupPointX=xstart+20
			
//			move_towards_point(_setupPointX, DefenseY, min(point_distance(x, y, _setupPointX, DefenseY), _speed));
//		}
//		if dodgePos=1
//		{
//			image_index=3
		
//			var _speed=2
//			var _setupPointX=xstart
			
//			move_towards_point(_setupPointX, DefenseY, min(point_distance(x, y, _setupPointX, DefenseY), _speed));
//		}
//		if dodgePos=0 //left
//		{
//			image_index=3
		
//			var _speed=2
//			var _setupPointX=xstart-20
			
//			move_towards_point(_setupPointX, DefenseY, min(point_distance(x, y, _setupPointX, DefenseY), _speed));
//		}
//	}
//}
if setup
{
	if oBattle.playerTurn
	{
		dodgePhase=false
		
		x=xstart
		
		if turnCompleted
		{
			if y<DefenseY+32
			{
				y+=2
			}
		}
		else
		{			
			sprite_index=sprites.idle
			
			if y>nonDefenseY
			{
				y-=1
			}
			else
			{
				y=nonDefenseY
			}
		}
	}



	if !oBattle.playerTurn
	{
		if targeted&&oBattle.defendStart=true
		{
			if !dodgePhase
			{
				y=DefenseY
				x=DefenseX
			}
			
			sprite_index=sprites.defend
			dodgePhase=true
		}
		else
		{
			x=xstart
			y=DefenseY+32	
		}
	}
}



if dodgePhase
{
	image_speed=0
	
	if global.DefendRows=5
	{
		if left_key
		{
			moveTimer=10
		
			if dodgePos!=0{image_index=1 dodgePos-=1}
		}
	
		if right_key
		{
			moveTimer=10
		
			if dodgePos!=4{image_index=2 dodgePos+=1}
		}
	
	
	
	
		if dodgePos=4 //far right
		{
			if moveTimer<0
			{
				image_index=0	
			}
		
			var _speed=3
			var _setupPointX=DefenseX+60
			
			move_towards_point(_setupPointX, DefenseY, min(point_distance(x, y, _setupPointX, DefenseY), _speed));
		}
	
		if dodgePos=3 //right
		{
			if moveTimer<0
			{
				image_index=0	
			}
		
			var _speed=3
			var _setupPointX=DefenseX+30
			
			move_towards_point(_setupPointX, DefenseY, min(point_distance(x, y, _setupPointX, DefenseY), _speed));
		}
	
		if dodgePos=2 //middle
		{
			if moveTimer<0
			{
				image_index=0	
			}
		
			var _speed=3
			var _setupPointX=DefenseX
			
			move_towards_point(_setupPointX, DefenseY, min(point_distance(x, y, _setupPointX, DefenseY), _speed));
		}
	
		if dodgePos=1 //left
		{
			if moveTimer<0
			{
				image_index=0	
			}
		
			var _speed=3
			var _setupPointX=DefenseX-30
			
			move_towards_point(_setupPointX, DefenseY, min(point_distance(x, y, _setupPointX, DefenseY), _speed));
		}
	
		if dodgePos=0 //farleft
		{
			if moveTimer<0
			{
				image_index=0	
			}
		
			var _speed=3
			var _setupPointX=DefenseX-60
			
			move_towards_point(_setupPointX, DefenseY, min(point_distance(x, y, _setupPointX, DefenseY), _speed));
		}
	}
	if global.DefendRows=3
	{
		
		if left_key
		{	
			moveTimer=10
		
			if dodgePos!=1{image_index=1 dodgePos-=1}
		}
	
		if right_key
		{
			moveTimer=10
		
			if dodgePos!=3{image_index=2 dodgePos+=1}
		}
	
		if dodgePos=3 //right
		{
			if moveTimer<0
			{
				image_index=0	
			}
		
			var _speed=3
			var _setupPointX=DefenseX+30
			
			move_towards_point(_setupPointX, DefenseY, min(point_distance(x, y, _setupPointX, DefenseY), _speed));
		}
	
		if dodgePos=2 //middle
		{
			if moveTimer<0
			{
				image_index=0	
			}
		
			var _speed=3
			var _setupPointX=DefenseX
			
			move_towards_point(_setupPointX, DefenseY, min(point_distance(x, y, _setupPointX, DefenseY), _speed));
		}
	
		if dodgePos=1 //left
		{
			if moveTimer<0
			{
				image_index=0	
			}
		
			var _speed=3
			var _setupPointX=DefenseX-30
			
			move_towards_point(_setupPointX, DefenseY, min(point_distance(x, y, _setupPointX, DefenseY), _speed));
		}
	}
	moveTimer-=1
}


	
//	}
//	else
//	{
//		sprite_index=sprites.idle
	
//		dodgePos=1
	
//		var _speed=1.25
//		var _setupPointX=xstart
			
//		move_towards_point(_setupPointX, yPos, min(point_distance(x, y, _setupPointX, yPos), _speed));
	
//		sprite_index = sprites.idle	
//	}

//	if setup
//	{
//		if !defensiveStance&&!targeted
//		{
//			if image_alpha<1
//			{
//				image_alpha+=.1
//			}
//			yPos=nonDefenseY
//		}
//		else
//		{
//			if targeted
//			{
//				if oBattle.defendStart=true
//				{
//					yPos=nonDefenseY+24
//				}
//				else
//				{
//					yPos++	
//				}
//			}
//			else
//			{
//				if image_alpha>0
//				{
//					image_alpha-=.1
//				}
//				yPos=nonDefenseY+52
//			}
//		}
//	}

//	dodgeTimer--
//}

//dead or escaped
if (oBattle.escaped) && (hp > 0)
{
	y +=2;	
}

if (hp <= 0)
{
	y +=2;	
}
	
	
//for correct keys 
right_key = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
left_key = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));

//for hold keys
right_hold = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_hold = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_hold = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_hold = keyboard_check(vk_down) || keyboard_check(ord("S"));
	
right_release = keyboard_check_released(vk_right) || keyboard_check_released(ord("D"));
left_release = keyboard_check_released(vk_left) || keyboard_check_released(ord("A"));
up_release = keyboard_check_released(vk_up) || keyboard_check_released(ord("W"));
down_release = keyboard_check_released(vk_down) || keyboard_check_released(ord("S"));