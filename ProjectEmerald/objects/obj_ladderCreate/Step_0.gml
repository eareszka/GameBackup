switch type
{
	//catacombs1
	case 0:
		sprite_index=spr_ladderCreate1
		if !instance_exists(oCutscene)
		{
			if global.flag[49]=1
			{
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
	
	//catacombs2
	case 1:
		sprite_index=spr_ladderCreate2
		if !instance_exists(oCutscene)
		{
			if global.flag[54]=1
			{
				instance_destroy(inst_5909EBE3)
				image_index=image_number-1
			}
			else
			{
				image_index=0	
			}
		}
	break;
	
	//catacombs3
	case 2:
		sprite_index=spr_ladderCreate3
		if !instance_exists(oCutscene)
		{
			if global.flag[55]=1
			{
				instance_destroy(inst_691EE4F7)
				image_index=image_number-1
			}
			else
			{
				image_index=0	
			}
		}
	break;
	
	case 3:
		sprite_index=spr_ladderCreate4
		if !instance_exists(oCutscene)
		{
			if global.flag[55]=1
			{
				instance_destroy(inst_691EE4F7)
				instance_destroy(inst_3F0A0629)
				image_index=image_number-1
			}
			else
			{
				image_index=0	
			}
		}
	break;
}
