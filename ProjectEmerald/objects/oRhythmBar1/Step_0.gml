if !fade
{
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

	if lastPass = false
	{
		if !mirror
		{
			if !hold
			{
				if array_last(arr).x > 250
				{
					lastPass = true
					instance_destroy(oRhythmVisual)
				}
			}
			if hold
			{
				if array_last(arr).x > 320
				{
					lastPass = true
					instance_destroy(oRhythmVisual)
				}
			}
		}
		if mirror
		{
			var _last = array_length(arr)-2
			if !hold
			{
				if arr[_last].throwDone = true && array_last(arr).x < 90
				{
					lastPass = true
					oRhythmVisual.shrink = true
				}
			}
			if hold
			{
				if arr[_last].throwDone = true && array_last(arr).x < 20
				{
					lastPass = true
					oRhythmVisual.shrink = true
				}
			}
		}
	}
	
	if lastPass = true
	{
		for(var i = 0; i < array_length(arr); i++)
		{
			if arr[i].hit = true
			{
				array_push(arr2,arr[i])
			}
		}
		fade=true
	}

	/*********
	checks hit
	*********/
	for(i = 0; i < array_length(arr); i++)
	{
		//checks if any reverse arrows
		if arr[i].reverse = false
		{
			//checks based off arrow subimg
			switch arr[i].subimg
			{
				case 0:
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 10,0,camera_get_view_width(view_camera[0]) / 2 + 10,50,arr[i],true,true) && right_key && !left_hold && !up_hold && !down_key)
					{
						if  arr[i].hold
						{
							holding=true
							arr[i].hitHold=true
							
						}
						if !arr[i].hold
						{
							arr[i].color = c_lime
							arr[i].hit = true
							if instance_exists(obj_comboNumber)
							{
								obj_comboNumber.xscale=1.75
								obj_comboNumber.yscale=1.75
								global.comboAmmount+=1
							}
						}
					}
				break;
				case 1:
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 10,0,camera_get_view_width(view_camera[0]) / 2 + 10,50,arr[i],true,true) && left_key && !right_hold && !up_hold && !down_key)
					{
						if  arr[i].hold
						{
							holding=true
							arr[i].hitHold=true
						}
						if !arr[i].hold
						{
							arr[i].color = c_lime
							arr[i].hit = true
							if instance_exists(obj_comboNumber)
							{
								obj_comboNumber.xscale=1.75
								obj_comboNumber.yscale=1.75
								global.comboAmmount+=1
							}
						}
					}
				break
				case 2:
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 10,0,camera_get_view_width(view_camera[0]) / 2 + 10,50,arr[i],true,true) && down_key && !right_hold && !left_hold && !up_hold)
					{
						if  arr[i].hold
						{
							holding=true
							arr[i].hitHold=true
						}
						if !arr[i].hold
						{
							arr[i].color = c_lime
							arr[i].hit = true
							if instance_exists(obj_comboNumber)
							{
								obj_comboNumber.xscale=1.75
								obj_comboNumber.yscale=1.75
								global.comboAmmount+=1
							}
						}
					}
				break;
				case 3:
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 10,0,camera_get_view_width(view_camera[0]) / 2 + 10,50,arr[i],true,true) && up_key && !right_hold && !left_hold && !down_key)
					{
						if  arr[i].hold
						{
							holding=true
							arr[i].hitHold=true
						
						}
						if !arr[i].hold
						{
							arr[i].color = c_lime
							arr[i].hit = true
							if instance_exists(obj_comboNumber)
							{
								obj_comboNumber.xscale=1.75
								obj_comboNumber.yscale=1.75
								global.comboAmmount+=1
							}
						}
					}
				break;
			}
		}
		else
		{
			switch arr[i].subimg
			{
				case 0:
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 7,0,camera_get_view_width(view_camera[0]) / 2 + 10,50,arr[i],true,true) && left_key && !right_hold && !up_hold && !down_key)
					{
						arr[i].color = c_lime
						arr[i].hit = true
						if instance_exists(obj_comboNumber)
						{
							obj_comboNumber.xscale=1.75
							obj_comboNumber.yscale=1.75
							global.comboAmmount+=1
						}
					}
				break;
				case 1:
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 7,0,camera_get_view_width(view_camera[0]) / 2 + 10,50,arr[i],true,true) && right_key && !left_hold && !up_hold && !down_key)
					{
						oBattle.success+=1
						arr[i].color = c_lime
						arr[i].hit = true
						if instance_exists(obj_comboNumber)
						{
							obj_comboNumber.xscale=1.75
							obj_comboNumber.yscale=1.75
							global.comboAmmount+=1
						}
					}
				break
				case 2:
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 7,0,camera_get_view_width(view_camera[0]) / 2 + 10,50,arr[i],true,true) && up_key && !right_hold && !left_hold && !down_hold)
					{
						arr[i].color = c_lime
						arr[i].hit = true
						if instance_exists(obj_comboNumber)
						{
							obj_comboNumber.xscale=1.75
							obj_comboNumber.yscale=1.75
							global.comboAmmount+=1
						}
					}
				break;
				case 3:
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 7,0,camera_get_view_width(view_camera[0]) / 2 + 10,50,arr[i],true,true) && down_key && !right_hold && !left_hold && !up_key)
					{
						arr[i].color = c_lime
						arr[i].hit = true
						if instance_exists(obj_comboNumber)
						{
							obj_comboNumber.xscale=1.75
							obj_comboNumber.yscale=1.75
							global.comboAmmount+=1
						}
					}
				break;
			}
		}		
	}


	/************
	if hold arrow
	************/
	if hold && !set1
	{
		for(i = 0; i < array_length(arr); i++)
		{
			if arr[i].hold = true {holdPos = i holdSubimg = arr[i].subimg holdx = arr[i].x break}
		}
	
		//changes x pos so that hold can last long
		for(i = 0; i < array_length(arr); i++)
		{
			if i = holdPos && i > 0
			{
				arr[i].x = arr[i-1].x - 175
			}
			else
			{
				var _ran2 = irandom_range(0,99)
				//changes x pos of each index
				if i > 0
				{
					switch spd
					{
						case 1:
							if _ran2 < 15
							{
								arr[i].x = arr[i-1].x - 50
							}
							if _ran2 >= 15 && _ran2 < 50
							{
								arr[i].x = arr[i-1].x - 100
							}
							else
							{
								arr[i].x = arr[i-1].x - 75		
							}
						break;
									
									
						case 2:
							if _ran2 < 15
							{
								arr[i].x = arr[i-1].x - 35
							}
							if _ran2 >= 15 && _ran2 < 50
							{
								arr[i].x = arr[i-1].x - 65
							}
							else
							{
								arr[i].x = arr[i-1].x - 50	
							}
						break;
									
									
						case 3:
							if _ran2 < 15
							{
								arr[i].x = arr[i-1].x - 23
							}
							if _ran2 >= 15 && _ran2 < 50
							{
								arr[i].x = arr[i-1].x - 50
							}
							else
							{
								arr[i].x = arr[i-1].x - 30		
							}
						break;
									
									
						case 4:
							if _ran2 < 15
							{
								arr[i].x = arr[i-1].x - 23
							}
							if _ran2 >= 15 && _ran2 < 50
							{
								arr[i].x = arr[i-1].x - 33
							}
							else
							{
								arr[i].x = arr[i-1].x - 30	
							}
						break;
									
						//highest freq
						case 5:
							if _ran2 < 15
							{
								arr[i].x = arr[i-1].x - 23
							}
							if _ran2 >= 15 && _ran2 < 50
							{
								arr[i].x = arr[i-1].x - 23
							}
							else
							{
								arr[i].x = arr[i-1].x - 23		
							}
						break;
					}
				}
			}
		}
	
		//makes sure hold subimg is unique
		for(i = 0; i < array_length(arr); i++)
		{
			if i != holdPos && arr[i].subimg = holdSubimg
			{
				while arr[i].subimg = holdSubimg
				{
					arr[i].subimg = irandom_range(0,3)			
				}
			}
		}
	set1 = true
	}


	//hold
	for(var i = 0; i < array_length(arr); i++)
	{
		if arr[i].hold = true 
		{	
			if arr[i].hitHold&&!holdFail
			{
				if !holdSetup{xOff=arr[i].x-182 holdSetup=true}//bar is locked onto arrow
				switch arr[i].subimg
				{
					case 0:
						if right_release
						{holding=false holdFail=true}
						xOff+=arr[i].xSpeed
						if subimg<33{subimg+=arr[i].xSpeed/4}
						else{holdSuccess=true}
					break;
					
					case 1:
						if left_release
						{holding=false holdFail=true}
						xOff+=arr[i].xSpeed
						if subimg<33{subimg+=arr[i].xSpeed/4}
						else{holdSuccess=true}
					break;
					
					case 2:
						if down_release
						{holding=false holdFail=true}
						xOff+=arr[i].xSpeed
						if subimg<33{subimg+=arr[i].xSpeed/4}
						else{holdSuccess=true}
					break;
					
					case 3:
						if up_release
						{holding=false holdFail=true}
						xOff+=arr[i].xSpeed 
						if subimg<33{subimg+=arr[i].xSpeed/4}
						else{holdSuccess=true}
					break;
				}
			}
			else
			{
				arr[i].hitHold=false	
			}
			
			if holdSuccess
			{
				arr[i].hit=true global.flag[11]=1 	
				if !holdSuccessSetup
				{
					if instance_exists(obj_comboNumber)
					{
						obj_comboNumber.xscale=1.75
						obj_comboNumber.yscale=1.75
						global.comboAmmount+=1
					}
					holdSuccessSetup=true
				}
				
			}
		}
	}

	/**********
	throw arrow
	**********/
	if mirror
	{
		if arr[0].n > -70 && !arr[_last].n > 0
		{
			targets.sprite_index = targets.sprites.throwing
			targets.depth = oBattle.unitDepth	
		}
		var _last = array_length(arr)-2
		if arr[_last].n > 0
		{
			targets.sprite_index = targets.sprites.idle
			targets.depth = oBattle.unitDepth
		}
	}

}

//changes index based on next arrow
if(nextArrow<array_length(arr))&&!fade
{
	if ((arr[nextArrow].x>((camera_get_view_width(view_camera[0]) / 2)-7))||arr[nextArrow].hit=true)
	{
		nextArrow+=1
	}
	else
	{
		oRhythmBar1.subimg=arr[nextArrow].subimg
	}
}
else
{
	if !holding{subimg=4}
}

if holding{sprite=sRhythmBarHold}
else
{
	if (right_hold||left_hold||up_hold||down_hold){color=c_lime}
	else{color=c_white}
}


//end
if fade
{
	if instance_exists(obj_comboNumber){obj_comboNumber.fade=true}
	alpha-=.1
	if alpha<0
	{instance_destroy()}
}