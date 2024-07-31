switch padNumber
{
	case 0:
		sprite_index=spr_dancePad2
		if place_meeting(x,y,obj_playerEmory)&&global.flag[39]=0&&!instance_exists(obj_danceBar)
		{	
			if keyboard_check_pressed(vk_space){createDancePad(0)}
		}
	break;
}