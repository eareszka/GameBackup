event_inherited()

if activated
{
	visible=true
	if place_meeting(x,y,obj_playerEmory)
	{
		if keyboard_check_pressed(vk_space) && !instance_exists(obj_textBox) && !instance_exists(oMainMenu)
		{
			faceActor(obj_playerEmory,self)
			if !audio_is_playing(textBoxOpen)
			{
				audio_play_sound(textBoxOpen,1,false)
			}
			create_textbox("ConstructionWorker1")
					
		}
	}
}
else
{
	visible=false	
}