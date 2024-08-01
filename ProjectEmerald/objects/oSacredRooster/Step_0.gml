if place_meeting(x,y,obj_playerEmory)
{
	if keyboard_check_pressed(vk_space) && !instance_exists(obj_textBox) && !instance_exists(oMainMenu)
	{
		if !audio_is_playing(textBoxOpen)
		{
			audio_play_sound(textBoxOpen,1,false)
		}
		if !audio_is_playing(sacredAnimalSong)
		{
			audio_play_sound(sacredAnimalSong,1,false)
		}
		if !instance_exists(oSacredAnimalBackground)	
		{
			instance_create_layer(obj_playerEmory.x,obj_playerEmory.y,"overworldInteraction",oSacredAnimalBackground)
		}
		create_textbox(text_id)
		alphaMinus = true
					
	}
}

if alphaMinus = true
{
	image_alpha -=.01
	if image_alpha < 0
	{
		instance_create_layer(1095,695,"Player",oNPCfin1)
		instance_create_layer(1116,720,"Player",oNPCfinCOLL)
		instance_create_layer(1116,752,"Player",oNPCfinCOLL)
		instance_destroy()	
		instance_destroy(inst_55485F86)
	}
}