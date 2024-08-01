if !instance_exists(obj_textBox)
{
	if keyboard_check_pressed(vk_space) && place_meeting(x,y,obj_playerEmory)
	{
		create_textbox("BedUsed")	
	}
}