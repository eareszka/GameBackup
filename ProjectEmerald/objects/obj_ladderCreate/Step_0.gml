switch type
{
	//catacombs1
	case 0:
		if !instance_exists(oCutscene)
		{
			if global.flag[49]=1
			{
				sprite_index=spr_ladderCreate1
				instance_destroy(inst_2949BB23)
				instance_destroy(inst_7869D483)	
				image_index=image_number-1
			}
			else
			{
				image_index=0	
			}
		}
	break;
}
