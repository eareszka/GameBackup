//gows box at beginning
if !grow
{
	if yScaleExpand<2.5
	{
		yScaleExpand+=.5
	}
	if xScaleExpand<10
	{
		xScaleExpand+=.70
	}
}

if xScaleExpand>9 && yScaleExpand>1.5
{
	grow = true	
}

if grow
{
	if !instance_exists(oRhythmBar4)
	{
		if alpha>0{alpha-=.25}else{instance_destroy()}
	}
}


