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
	if ammount > 0
	{
		if image_index > 0 && image_index < 3
		{
			timer2 = 100
			x+=1	
			ammount-=1
		}
		else
		{
			image_index = 1	
		}
	}
	else
	{
		if timer < 0
		{
			if ammount > -50
			{
				if image_index > 2 && image_index < 5
				{
					x-=1	
					ammount-=1
				}
				else
				{
					image_index = 3
				}
			}
			else
			{
				if timer2 < 0
				{
					if image_index > 0 && image_index < 3
					{
						timer = 100
						x+=1
						ammount = 50
					}
					else
					{
						image_index = 1	
					}
				}
				else
				{
					image_index = 0
					x+=0
					timer2 -=1	
				}
			}
		}
		else
		{
			image_index = 0
			x+=0
			timer-=1
		}
	}
}
else
{
	x+=0
	if obj_playerEmory.y-10 > y  image_index = 0
	else
	{
		if obj_playerEmory.x < x  image_index = 4
		if obj_playerEmory.x > x  image_index = 2
	}
}


//coll
inst_7B951EF04.x = x-7
inst_7B951EF04.y = y-2

