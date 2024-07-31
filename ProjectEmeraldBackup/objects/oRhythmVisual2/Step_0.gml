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

if grow
{
	timer -=1
	if timer<0
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


