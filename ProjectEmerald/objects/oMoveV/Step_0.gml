if !setup
{
	starty = obj.y
	setup = true
}

if !back&&(obj.y>(starty-(ammount*2)))
{
	obj.y-=yspeed
}
else
{
	back=true
}

if back&&(obj.y<starty)
{
	obj.y+=yspeed
}
else
{
	beg=true	
}

if beg&&back&&obj.y=starty
{
	instance_destroy(self)	
}

