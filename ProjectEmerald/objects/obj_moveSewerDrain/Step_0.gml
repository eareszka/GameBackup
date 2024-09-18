image_speed = .25
if global.flag[10] = 1
{
	if obj_moveSewerDrain.image_index >= 17
	{
		image_index = 17
	}
	if cutscene = false
	{
		create_cutscene("moveSewerDrain")
	}
	else
	{
		if place_meeting(x,y,obj_playerEmory)
		{
			if keyboard_check_pressed(vk_space)
			{
				if before_face != -1 obj_playerEmory.face = before_face
				global.prevRoom = room
				global.escapeImmunity = 0
				instance_create_depth(0,0,-9999,oFadeIn)
				if alarm[0] == -1 
				{
					alarm[0] = room_speed*.2
				}
			}
		}
		image_index = 17
	}
}
else
{
	image_index = 0
}
