if activate
{
	if ribx>=1{ribx-=.5}
	if riby>=12{riby-=.5}

	if leg1x<=-10{leg1x+=.5}
	if leg1y<=18{leg1y+=.5}

	if leg2x<=10{leg2x+=.5}
	if leg2y<=2{leg2y+=.5}

	if leg3x<=25{leg3x+=.5}
	if leg3y>=20{leg3y-=.5}

	if leg4x<=5{leg4x+=.5}
	if leg4y<=2{leg4y+=.5}
}

if roll{image_angle-=7}

var _amplitude=3
var _frequency=.005
if float{y = ystart + _amplitude * sin(current_time * _frequency);}


if dead
{
	image_index = 9
	timer--
	if timer<0
	{
		image_blend = c_red;
		image_alpha -= 0.01	
		if image_alpha<0
		{
			instance_destroy(self)
		}
	}
}


if global.flag[49]=1{instance_destroy()}