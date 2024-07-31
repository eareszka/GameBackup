//place meeting
if place_meeting(x,y,obj_playerEmory)
{
	if keyboard_check_pressed(vk_space) && !instance_exists(obj_textBox) && !instance_exists(oMainMenu)
	{
		if !audio_is_playing(textBoxOpen)
		{
			audio_play_sound(textBoxOpen,1,false)
		}
		create_textbox(text_id)				
	}
	if (!dead)
	{
		if (random(1) < encounter) 
		{
			NewEncounter(
				choose(	
						[global.bosses.ancientKing],
				), 
				spr_battleBackground1,
				battle2,
				true,
				,self
			);
		}
	}
	else
	{
		image_alpha -= 0.05;
		image_blend = c_red;
		if (image_alpha < 0) 
		{
			instance_destroy(self);
			instance_destroy(inst_76CF7B73);
		}
	}
}
