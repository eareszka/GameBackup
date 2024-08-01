//box size based off hold option or not
if !hold
{
	//gows box at beginning
	if !grow
	{
		if yScaleExpand<2.5
		{
			yScaleExpand+=.5
		}
		if xScaleExpand<9.5
		{
			xScaleExpand+=.5
		}
	}

	if xScaleExpand>8.5 && yScaleExpand>1.5
	{
		grow = true	
	}
}
else
{
	//gows box at beginning
	if !grow
	{
		timer = 10
		if yScaleExpand<2.5
		{
			yScaleExpand+=.5
		}
		if xScaleExpand<15
		{
			xScaleExpand+=.5
		}

		if xScaleExpand>14 && yScaleExpand>1.5
		{
			grow = true	
		}
	}
	if grow
	{
		if shrink 
		{
			timer --
			if timer < 0
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
	}
}

if fade
{
	alpha-=.1
	if alpha<0
	{instance_destroy()}
}