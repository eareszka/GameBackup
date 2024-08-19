switch target.spd
{
	case 2:
		if image_xscale<2.3{image_xscale+=.1}
		if image_yscale<2.4{image_yscale+=.1}
	break
	
	case 3:
		if image_xscale<15{image_xscale+=.5}
		if image_yscale<2.4{image_yscale+=.2}
	break
	
	case 4:
		if image_xscale<2.3{image_xscale+=.1}
		if image_yscale<2.4{image_yscale+=.1}
	break
}

//slows down arrows if touching
if place_meeting(x,y,oRhythmArrow)&&target.spd!=4
{
	oRhythmArrow.xSpeed=2.5
}



//done
if fade
{
	image_alpha-=.1
	if image_alpha<0
	{instance_destroy()}
}