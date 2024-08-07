draw_self()

//for drawing obj on plate
switch plateNumber
{
	case 0:
		if press||global.flag[35]=1{draw_sprite_stretched(spr_carryingObj,1,x-9,y-7,40,40)}
	break;
	
	case 1:
		if press||global.flag[35]=1{draw_sprite_stretched(spr_carryingObj,1,x-9,y-7,40,40)}
	break;
	
	case 2:
		if press||global.flag[44]=1{draw_sprite_stretched(spr_carryingObj,1,x-9,y-7,40,40)}
	break;
	
	case 3:
		if press||global.flag[45]=1{draw_sprite_stretched(spr_carryingObj,1,x-9,y-7,40,40)}
	break;
}