//gows box at beginning
if !grow
{
	if yScaleExpand<2.5
	{
		yScaleExpand+=.5
	}
	if xScaleExpand<9
	{
		xScaleExpand+=.5
	}
}

if xScaleExpand>8 && yScaleExpand>1.5
{
	grow = true	
}

if grow
{
	if !instance_exists(oRhythmBar6)
	{
		if yPlace>17.8
		{
			yPlace-=1.2
		}
		else
		{
			if yScaleExpand>1.6
			{
				yScaleExpand-=.1	
			}
			else
			{
				if xScaleExpand>7
				{
				xScaleExpand-=.13
				}
			}
		}
		timer2 -=1
		if timer2<0
		{
			instance_destroy(self)	
		}
	}
}


