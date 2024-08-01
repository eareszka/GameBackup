if !fade
{
	//for correct keys 
	right_key = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	left_key = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));

	//for wrong keys
	right_wrong = keyboard_check(vk_right) || keyboard_check(ord("D"));
	left_wrong = keyboard_check(vk_left) || keyboard_check(ord("A"));
	up_wrong = keyboard_check(vk_up) || keyboard_check(ord("W"));
	down_wrong = keyboard_check(vk_down) || keyboard_check(ord("S"));

	if lastPass = false
	{
		if !mirror
		{
			if !hold
			{
				if array_last(arr).x > 300
				{
					lastPass = true
					instance_destroy(obj_danceVisual)
				}
			}
			if hold
			{
				if array_last(arr).x > 380
				{
					lastPass = true
					instance_destroy(obj_danceVisual)
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
					obj_danceVisual.shrink = true
				}
			}
			if hold
			{
				if arr[_last].throwDone = true && array_last(arr).x < 20
				{
					lastPass = true
					obj_danceVisual.shrink = true
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
		subimg = sRhythmBarSpawn
		image_speed = -1
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
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 5,0,camera_get_view_width(view_camera[0]) / 2 + 15,50,arr[i],true,true) && right_key && !left_wrong && !up_wrong && !down_key)
					{
						if  arr[i].hold
						{
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
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 5,0,camera_get_view_width(view_camera[0]) / 2 + 15,50,arr[i],true,true) && left_key && !right_wrong && !up_wrong && !down_key)
					{
						if  arr[i].hold
						{
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
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 5,0,camera_get_view_width(view_camera[0]) / 2 + 15,50,arr[i],true,true) && down_key && !right_wrong && !left_wrong && !up_wrong)
					{
						if  arr[i].hold
						{
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
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 5,0,camera_get_view_width(view_camera[0]) / 2 + 15,50,arr[i],true,true) && up_key && !right_wrong && !left_wrong && !down_key)
					{
						if  arr[i].hold
						{	
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
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 7,0,camera_get_view_width(view_camera[0]) / 2 + 10,50,arr[i],true,true) && left_key && !right_wrong && !up_wrong && !down_key)
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
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 7,0,camera_get_view_width(view_camera[0]) / 2 + 10,50,arr[i],true,true) && right_key && !left_wrong && !up_wrong && !down_key)
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
				break
				case 2:
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 7,0,camera_get_view_width(view_camera[0]) / 2 + 10,50,arr[i],true,true) && up_key && !right_wrong && !left_wrong && !down_wrong)
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
					if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 - 7,0,camera_get_view_width(view_camera[0]) / 2 + 10,50,arr[i],true,true) && down_key && !right_wrong && !left_wrong && !up_key)
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

	/******************
	checks success flag
	******************/
	if lastPass
	{
		if !mirror
		{
			//if array is smaller then 1 it needs to only check one element 
			if array_length(arr) > 1
			{
				//all correct
				if array_length(arr2) = array_length(arr)
				{
					global.flag[dancePadIndex]=1
				}
				else
				{
					global.flag[dancePadIndex]=0
				}
			}
			else
			{
				//all correct
				if arr[0].hit = true
				{
					global.flag[dancePadIndex]=1
				}
				else
				{
					global.flag[dancePadIndex]=0
				}
			}
		}
		if mirror
		{
			if array_length(arr) > 1
			{
				var _length = array_length(arr2)

				//none correct
				if array_length(arr2) < round((_length+2)/2)
				{
					global.success = 0
				}
			
				//some or all correct
				else
				{
					global.success = 1	
				}
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


	//old hold method
	for(var i = 0; i < array_length(arr); i++)
	{
		if arr[i].hold = true 
		{
			if arr[i].x > 30
			{
				//if !instance_exists(oRhythmHoldLine)
				//with instance_create_depth(x+207,y+22,-10001,oRhythmHoldLine) {start = true xSpeed = 3}
			}
			if arr[i].x > 200
			{
				obj_danceVisual.shrink = true
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
if fade
{
	if instance_exists(obj_comboNumber){obj_comboNumber.fade=true}
	alpha-=.1
	if alpha<0
	{instance_destroy()}
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
		obj_danceBar.subimg=arr[nextArrow].subimg
	}
}
else
{
	subimg=4	
}


if right_wrong||left_wrong||up_wrong||down_wrong{color=c_lime}
else{color=c_white}