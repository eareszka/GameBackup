if !instance_exists(obj_textBox3) && !instance_exists(oMainMenu)
{
	if !audio_is_playing(textBoxOpen)
	{
		audio_play_sound(textBoxOpen,1,false)
	}
	create_textbox3(text_id)
}