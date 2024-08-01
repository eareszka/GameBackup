if place_meeting(x,y,obj_playerEmory)
{
	if keyboard_check_pressed(vk_space) && !instance_exists(obj_textBox) && !instance_exists(oMainMenu)
	{
		faceActor(obj_playerEmory,self)
		if !audio_is_playing(textBoxOpen)
		{
			audio_play_sound(textBoxOpen,1,false)
		}
		create_textbox(text_id)			
	}
}

if !place_meeting(x,y,obj_playerEmory)
{
	if image_index > -1 && image_index < 2
	{
				
	}
	else
	{
		image_index = 0	
	}
}
else
{
	x+=0
	if obj_playerEmory.y-10 > y  image_index = 0
	else
	{
		if obj_playerEmory.x < x  image_index = 2
		if obj_playerEmory.x > x  image_index = 3
	}
}


//coll
inst_2B481CAA.x = x-7
inst_2B481CAA.y = y-2

