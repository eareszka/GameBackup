switch oBattle.battleBackground
{
	case spr_battleBackground1:
		box=sBoxRhythm
	break
	
	case spr_battleBackground2:
		box=sBoxRhythm2
	break
	
	case spr_battleBackground3:
		box=sBoxRhythm3
	break
	
	case spr_battleBackground4:
		box=sBoxRhythm4
	break;
	
	case spr_battleBackground5:
		box=sBoxRhythm5
	break;
}
draw_sprite_ext(box,0,camera_get_view_x(view_camera[0])+192,camera_get_view_y(view_camera[0])+yPlace,xScaleExpand,yScaleExpand, 0, c_white, alpha)
