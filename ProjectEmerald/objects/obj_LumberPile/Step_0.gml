if place_meeting(x,y,obj_playerEmory)&&global.flag[29]=0
{
	if keyboard_check_pressed(vk_space) && !instance_exists(obj_textBox) && !instance_exists(oMainMenu)
	{
		global.flag[29]=1
		instance_destroy(self)
	}
}

//bridge already built/already carrying lumber
if global.flag[3]=1{instance_destroy(self)}
