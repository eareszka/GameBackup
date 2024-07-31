if place_meeting(x,y,obj_playerEmory)
{
	if keyboard_check_pressed(vk_space) && !instance_exists(obj_textBox) && !instance_exists(oMainMenu)
	{
		faceActor(obj_playerEmory,self)
		create_textbox(text_id)
					
	}
}