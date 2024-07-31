//place meeting
if place_meeting(x,y,obj_playerEmory)
{
	if keyboard_check_pressed(vk_space) && !instance_exists(obj_textBox) && !instance_exists(oMainMenu) && !instance_exists(oCutscene)
	{
		if !audio_is_playing(textBoxOpen)
		{
			audio_play_sound(textBoxOpen,1,false)
		}
		create_textbox(text_id)
	}
}