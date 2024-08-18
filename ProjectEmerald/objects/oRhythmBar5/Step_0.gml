space_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)

if (place_meeting(x,y,oRhythmUnitBoyToy))
{
	if space_key
	{
		oRhythmUnitBoyToy.hit = true
		global.success=1
	}
}
if (place_meeting(x,y,oRhythmUnitBoyToy2))
{
	if space_key
	{
		oRhythmUnitBoyToy2.hit = true
		global.success=1
	}
}


if space_key
{	
	image_index = 1
}
else
{
	image_index = 0		
}

x+=3

if x > (camera_get_view_x(view_camera[0])+350)
{
	oRhythmVisual5.fade=true
	if instance_exists(obj_comboNumber){obj_comboNumber.fade=true}
	image_alpha-=.1
	if image_alpha<0
	{instance_destroy()}
}