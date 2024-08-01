if !setup
{
	startx = obj.x
	setup = true
	if randomDir{ran=irandom_range(0,1)}
}

if !half
{
	if !back&&(obj.x<startx+ammount)
	{
		obj.x+=xspeed
	}
	else
	{
		back=true
	}

	if back&&(obj.x>(startx-(ammount)))
	{
		obj.x-=xspeed
	}
	else
	{
		beg=true
		back=false
	}

	if beg&&!back&&(obj.x<startx)
	{
		obj.x+=xspeed
	}

	if beg&&!back&&obj.x=startx
	{
		instance_destroy(self)	
	}
}
else
{
	if ran=0
	{
		if !back&&(obj.x<startx+ammount)
		{
			obj.x+=xspeed
		}
		else
		{
			back=true
		}

		if back&&(obj.x>(startx))
		{
			obj.x-=xspeed
		}
		else
		{
			beg=true
			back=false
		}
		if beg&&!back&&obj.x=startx
		{
			instance_destroy(self)	
		}
	}
	if ran=1
	{
		if !back&&(obj.x>startx-ammount)
		{
			obj.x-=xspeed
		}
		else
		{
			back=true
		}

		if back&&(obj.x<(startx))
		{
			obj.x+=xspeed
		}
		else
		{
			beg=true
			back=false
		}
		if beg&&!back&&obj.x=startx
		{
			instance_destroy(self)	
		}
	}
}
