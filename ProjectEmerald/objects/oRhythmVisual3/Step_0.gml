//gows box at beginning
if !grow
{
	if yScaleExpand<3
	{
		yScaleExpand+=.5
	}
	if xScaleExpand<15
	{
		xScaleExpand+=.5
	}
}

if xScaleExpand>14 && yScaleExpand>2
{
	grow = true	
}
