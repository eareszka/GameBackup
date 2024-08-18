space_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)

for(var i=0;i<array_length(spaceArr);i++)
{
	if (place_meeting(x,y,spaceArr[i]))
	{
		if space_key
		{
			spaceArr[i].hit = true
		}
	}
}

if keyboard_check_pressed(vk_space)
{
	image_index = 1	
}
else
{
	image_index = 0
}

if !lastPass
{
	if array_last(spaceArr).x > camera_get_view_x(view_camera[0])+230||array_last(spaceArr).image_alpha<0
	{
		lastPass = true
	}
}

//sees how many were hit
if lastPass&&!check
{
	for(var i = 0; i < array_length(spaceArr); i++)
	{
		if spaceArr[i].hit = true
		{
			array_push(spaceArr2,spaceArr[i])
		}
		check=true
	}	
}

if check
{
	if array_length(spaceArr2)>0
	{
		//changes how many units can be targeted
		oBattle.scatterRageActive=true
		
		global.success = 1	
		fade=true
		oRhythmVisual6.fade=true
	}
	else
	{
		global.success = 0
		fade=true
		oRhythmVisual6.fade=true
	}
}

if fade
{
	if instance_exists(obj_comboNumber){obj_comboNumber.fade=true}
	image_alpha-=.1
	if image_alpha<0
	{instance_destroy()}
}


image_index = 0