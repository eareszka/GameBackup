//gows box at beginning
if !grow
{
	if yScaleExpand<2.5
	{
		yScaleExpand+=.5
	}
	if xScaleExpand<15
	{
		xScaleExpand+=.5
	}
}

if xScaleExpand>14 && yScaleExpand>1.5
{
	grow = true	
}

if fade
{
	alpha-=.1
	if alpha<0
	{instance_destroy()}
}

