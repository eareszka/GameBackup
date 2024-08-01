//place meeting
if place_meeting(x,y,obj_playerEmory)
{
	if !instance_exists(obj_textBox2) && !instance_exists(oMainMenu)
	{
		if !audio_is_playing(textBoxOpen)
		{
			audio_play_sound(textBoxOpen,1,false)
		}
		create_textbox2(text_id)
	}
}
else
{
	instance_deactivate_object(obj_textBox2)
}
